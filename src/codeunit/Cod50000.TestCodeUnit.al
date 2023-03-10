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
}