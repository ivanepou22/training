query 50001 "Customer to Contact"
{
    QueryType = Normal;

    elements
    {
        dataitem(Customer; Customer)
        {
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }

            dataitem(Contact; Contact)
            {
                DataItemLink = "No." = Customer."Primary Contact No.";
                SqlJoinType = InnerJoin;
                column(Contact_No; "No.")
                {
                }
                column(Contact_Name; Name)
                {
                }
                column(FirstName; "First Name")
                {
                }
                column(Surname; Surname)
                {
                }
                column(PhoneNo; "Phone No.")
                {
                }
                column(EMail; "E-Mail")
                {
                }
                column(CompanyNo; "Company No.")
                {
                }
                column(CompanyName; "Company Name")
                {
                }
            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}