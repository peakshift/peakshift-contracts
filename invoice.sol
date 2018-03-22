contract Invoice{
  struct invoice{
    string ID;
    uint Total;
    uint Balance;
    bool Status;
  }

  struct Payment{
    uint Amount;
    string ID;
    string Invoice;
  }

  mapping (string => invoice) public invoices;

  function pay(string InvoiceID) public payable{

  }

  function refund(address client) public {

  }
}