table 50001 "Trial"
{
    Caption = 'Trial';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[200])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[250])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
