reportextension 50000 "CUstomerListExt" extends "Customer - List"
{
    dataset
    {
        // Add changes to dataitems and columns here
        add(Customer)
        {
            column(Student_No_; "Student No.") { }
        }
    }

    requestpage
    {
        // Add changes to the requestpage here
        layout
        {
            addfirst(Content)
            {
                group(Options)
                {
                    field(Taxable; Taxable)
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
            LayoutFile = 'customerList.rdlc';
        }
    }

    trigger OnPreReport()
    var
        myInt: Integer;
    begin

    end;

    var
        Taxable: Boolean;
}