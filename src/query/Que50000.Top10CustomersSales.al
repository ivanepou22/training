query 50000 "Top 10 Customers - Sales"
{
    QueryType = Normal;
    TopNumberOfRows = 5;
    OrderBy = descending(SalesLCY_Sum);
    QueryCategory = 'Customer List';

    elements
    {
        dataitem(Cust__Ledger_Entry; "Cust. Ledger Entry")
        {

            filter(Posting_Date; "Posting Date")
            {
            }
            column(CustomerNo; "Customer No.")
            {
            }
            column(CustomerName; "Customer Name")
            {
            }
            column(CustomerPostingGroup; "Customer Posting Group")
            {
            }
            column(SalesLCY_Sum; "Sales (LCY)")
            {
                Method = Sum;
            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}