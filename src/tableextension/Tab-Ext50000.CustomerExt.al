tableextension 50000 "CustomerExt" extends Customer
{
    fields
    {
        field(50000; "Student No."; Code[50])
        {
            TableRelation = Student."No.";
            Caption = 'Student No.';
        }

        modify("Home Page")
        {
            trigger OnBeforeValidate()
            var
                myInt: Integer;
            begin
                Message('Hello');
            end;
        }
    }
    trigger OnInsert()
    var
        myInt: Integer;
    begin

    end;
}