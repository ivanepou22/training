report 50000 "Customer Registry"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;
    dataset
    {
        dataitem(Customer; Customer)
        {
            column(No_; "No.") { }
            column(Name; Name) { }
            column(Address_Customer; Address)
            {
            }
            column(EMail_Customer; "E-Mail")
            {
            }
            column(PhoneNo_Customer; "Phone No.")
            {
            }
            column(Amount_Customer; Amount)
            {
            }
            column(Balance_Customer; Balance)
            {
            }

            dataitem("Sales Invoice Header"; "Sales Invoice Header")
            {
                DataItemLinkReference = Customer;
                DataItemLink = "Bill-to Customer No." = field("No.");

                column(Amount_SalesInvoiceHeader; Amount)
                {
                }
                column(AmountIncludingVAT_SalesInvoiceHeader; "Amount Including VAT")
                {
                }
                column(CurrencyCode_SalesInvoiceHeader; "Currency Code")
                {
                }
                column(OrderNo_SalesInvoiceHeader; "Order No.")
                {
                }
                column(No_SalesInvoiceHeader; "No.")
                {
                }
                column(ExternalDocumentNo_SalesInvoiceHeader; "External Document No.")
                {
                }
            }


            trigger OnPreDataItem()
            var
                myInt: Integer;
            begin

            end;

            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin

            end;

            trigger OnPostDataItem()
            var
                myInt: Integer;
            begin

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
                    field("Credit Only"; CreditOnly)
                    {
                        ApplicationArea = All;

                    }
                }
            }
        }
    }

    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'mylayout.rdl';
        }
    }

    var
        CreditOnly: Boolean;

    trigger OnInitReport()
    var
        myInt: Integer;
    begin

    end;

    trigger OnPreReport()
    var
        myInt: Integer;
    begin
        //initialization
        CreditOnly := false;
    end;

    trigger OnPostReport()
    var
        myInt: Integer;
    begin

    end;
}