page 50001 "Student Card"
{
    PageType = Card;
    SourceTable = Student;
    PromotedActionCategories = 'New,Process,Report,New Document,My Reports,Trials';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                    Importance = Standard;
                    ShowMandatory = true;

                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.';
                    Importance = Promoted;
                    MultiLine = true;
                    Editable = false;
                    // Visible = false;
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Name field.';
                    Importance = Promoted;
                }
                field(DOB; Rec.DOB)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date Of Birth field.';
                    Importance = Additional;
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                    Importance = Additional;
                }
            }
            group(Contact)
            {

                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                    Importance = Promoted;
                }
                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Phone field.';
                    Importance = Standard;
                }
            }
        }
    }



    actions
    {
        area(Creation)
        {
            action(newStudent)
            {
                ApplicationArea = All;
                Caption = 'Order';
                RunObject = page "Sales Order";
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Category4;
            }
            action(newCustomer)
            {
                ApplicationArea = All;
                Caption = 'New Customer';
                RunObject = page "Customer Card";
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Category5;
            }
        }
        area(Navigation)
        {
            action(Students)
            {
                ApplicationArea = All;
                RunObject = page "Student List";
            }
            action(customers)
            {
                ApplicationArea = All;
                Caption = 'Customers';
                RunObject = page "Customer List";
            }
        }
        area(Processing)
        {
            action(Orders)
            {
                ApplicationArea = All;
                RunObject = page "Sales Order List";
            }
            action(Invoices)
            {
                ApplicationArea = All;
                Caption = 'Invoices';
                RunObject = page "Sales Invoice List";
            }
            action(Test)
            {
                ApplicationArea = All;
                trigger OnAction()
                var
                    Item: Record Item;
                begin
                    // TestFunctionProcedure();
                    TestCode.Run();
                end;
            }
        }
        area(Reporting)
        {
            action(TrialBalance)
            {
                ApplicationArea = All;
                RunObject = report "Trial Balance";
                Promoted = true;
                PromotedCategory = Report;
            }
            action(DetailedTrialBalance)
            {
                ApplicationArea = All;
                RunObject = report "Detail Trial Balance";
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Report;
            }
        }
    }


    var
        TestCode: Codeunit "Test CodeUnit";

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        // Message('This is A student Card !');
    end;

    trigger OnAfterGetCurrRecord()
    var
        myInt: Integer;
    begin
        // Message('Hello');
    end;

    procedure TestFunctionProcedure()
    var
        myInt: Integer;
    begin
        Message('I have been clicked');
    end;
}