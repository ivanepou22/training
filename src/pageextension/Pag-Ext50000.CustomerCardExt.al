pageextension 50000 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter("Salesperson Code")
        {
            field("Student No."; Rec."Student No.")
            {
                ApplicationArea = All;
            }
        }

        addafter("Address & Contact")
        {
            group(Tests)
            {
                field("Student Nos."; Rec."Student No.")
                {
                    ApplicationArea = All;
                }
            }
        }

        modify("Language Code")
        {
            Visible = false;
            Editable = false;
        }
    }

    actions
    {
        // Add changes to page actions here
        addafter(ApplyTemplate)
        {
            action(Test)
            {
                ApplicationArea = All;
                Caption = 'Test Action';
                Image = TestFile;

                trigger OnAction()
                begin
                    Message('Action');
                end;
            }
        }

        modify(MergeDuplicate)
        {
            Visible = false;
        }
    }

    var
        myInt: Integer;

}