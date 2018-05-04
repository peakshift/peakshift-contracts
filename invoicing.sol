pragma solidity ^0.4.23;
pragma experimental "v0.5.0";


/** @title Invoicing Contract */
contract Invoicing {

    address public owner;
    int public disputePeriod;

    /**
     * Constructor function runs once upon contract creation
     */
    constructor() public {
        owner = msg.sender;
        disputePeriod = 5;
    }

    /**
     * Data Type: Invoice Object
     */
    struct Invoice {
        uint total;
        uint balance;
        bool status;
        mapping (bytes32 => Payment) payments;
    }

    /**
     * Data Type: Dispute
     */
    struct Dispute {
        bytes32 invoice;
        bytes32 claim;
    }

    /**
     * Data Type: Payment Object
     */
    struct Payment {
        uint amount;
        address sender;
    }

    /**
     * Data Type: Invoices Array
     */
    mapping (bytes32 => Invoice) public invoices;

    /**
     * Events
     */
    event PaymentComplete(bytes32 _invoiceHash);

    /**
     * Check if owner sent the transaction otherwise reject it
     */
    modifier onlyOwner() {
        if (msg.sender != owner) {
            revert();
        }
        _;
    }

    /**
     * Register an invoice for payments.
     * 
     * @param _invoiceHash {uint256} - Content hash of the off-chain invoice
     * @param _total {uint} - Total amount owed
     */
    function create(bytes32 _invoiceHash, uint _total) public returns (bool) {
        invoices[_invoiceHash].total = _total;
        invoices[_invoiceHash].status = false;
        invoices[_invoiceHash].balance = 0;
        return true;
    }

    /**
     * Pay an invoice.
     *
     * @dev Create payment, and update invoice balance.
     * @param _invoiceHash {uint256} - Content hash of the off-chain invoice
     * @param _paymentHash {uint256} - Content hash of the off-chain payment
     * @return {bool} - True indicates operation was successful
     */
    function pay(bytes32 _invoiceHash, bytes32 _paymentHash) public payable returns (bool) {
        invoices[_invoiceHash].payments[_paymentHash].sender = msg.sender;
        invoices[_invoiceHash].payments[_paymentHash].amount = msg.value;
        invoices[_invoiceHash].balance += msg.value;
        if (invoices[_invoiceHash].balance >= invoices[_invoiceHash].total) {
            invoices[_invoiceHash].status = true;
            emit PaymentComplete(_invoiceHash);
        }
        return true;
    }

    /**
     * Open a dispute against the organisation for an invoice.
     *
     * @param _invoiceHash {uint256} - Content hash of the off-chain invoice
     * @param _claim {uint256} - Content hash of the off-chain claim
     */
    function dispute(bytes32 _invoiceHash, bytes32 _claim) public {
        revert();
    }

    /**
     * Return all payments towards an invoice in the event
     * the organisation loses a dispute.
     *
     * @notice Will be an attractive attack vector 
     * @param _invoiceHash {uint256} - Content hash of the off-chain invoice
     */
    function refund(bytes32 _invoiceHash) private onlyOwner {
        revert();
    }
}
