reportextension 50010 "CustomerRegister" extends "Customer Register"
{
    dataset
    {
        // Add changes to dataitems and columns here
        add("G/L Register")
        {
            column(ReportTestTittle; ReportTestTittle) { }
        }
    }

    requestpage
    {
        // Add changes to the requestpage here
    }

    trigger OnPreReport()
    var
        myInt: Integer;
    begin
        ReportTestTittle := 'Training AL';
    end;

    var
        ReportTestTittle: Text[100];
}