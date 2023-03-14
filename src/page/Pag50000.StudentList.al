page 50000 "Student List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Student;
    Editable = false;
    CardPageId = "Student Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Name field.';
                }
                field(DOB; Rec.DOB)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date Of Birth field.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone field.';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Navigation)
        {
            action("Import Student")
            {
                ApplicationArea = All;
                RunObject = xmlport Student;
                Promoted = true;
                PromotedCategory = Process;
                Image = ImportCodes;
                trigger OnAction();
                begin

                end;
            }
        }
    }
}