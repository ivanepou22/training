report 50001 "Customer Entries"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    // DefaultRenderingLayout = LayoutName;
    DefaultLayout = RDLC;
    RDLCLayout = 'Customer Entries.rdl';
    dataset
    {
        dataitem(Customer; Customer)
        {
            PrintOnlyIfDetail = true;
            column(No_; "No.")
            {

            }
            column(Name; Name)
            {

            }
            column(HasEntries; HasEntries)
            {

            }

            dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = field("No.");
                DataItemLinkReference = Customer;
                DataItemTableView = sorting("Document No.", "Customer No.", "Posting Date", "Currency Code");

                column(DocumentNo_CustLedgerEntry; "Document No.")
                {
                }
                column(DocumentType_CustLedgerEntry; "Document Type")
                {
                }
                column(PostingDate_CustLedgerEntry; "Posting Date")
                {
                }
                column(Amount_CustLedgerEntry; Amount)
                {
                }
                column(CurrencyCode_CustLedgerEntry; "Currency Code")
                {
                }
                column(AmountLCY_CustLedgerEntry; "Amount (LCY)")
                {
                }
                column(Description_CustLedgerEntry; Description)
                {
                }
            }

            trigger OnAfterGetRecord()
            var
                myInt: Integer;
                RecCustLedEnt: Record "Cust. Ledger Entry";
            begin
                HasEntries := false;
                RecCustLedEnt.Reset();
                RecCustLedEnt.SetRange("Customer No.", Customer."No.");
                if RecCustLedEnt.FindFirst() then
                    HasEntries := true;
            end;

        }

    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }

    var
        myInt: Integer;
        HasEntries: Boolean;
}