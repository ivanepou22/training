codeunit 50000 "Test CodeUnit"
{
    trigger OnRun()
    begin
        CalPrice();
    end;

    var
        myInt: Integer;

    procedure CalPrice()
    var
        myInt: Integer;
    begin
        Message('Hello AL');
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnAfterSubstituteReport', '', true, true)]
    local procedure MyProcedure(ReportId: Integer; var NewReportId: Integer)
    begin
        if ReportId = Report::"Customer - Trial Balance" then
            NewReportId := Report::"Customer - Trial Balance - TR";
    end;
}