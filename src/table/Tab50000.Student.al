table 50000 "Student"
{
    DataClassification = ToBeClassified;
    CaptionML = ENU = 'Student', DAN = 'Navn', ESP = 'Nombre', FRA = 'Nom', ENC = 'Name';

    fields
    {
        field(1; "No."; Code[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';
        }
        field(2; "First Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Last Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Email; Text[50])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
        }
        field(5; Phone; Text[15])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }
        field(6; Gender; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ",Female,Male;
        }
        field(7; DOB; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date Of Birth';
        }
        field(8; "User ID"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = "User Setup"."User ID";
            Editable = false;
        }
        field(9; "No. Series"; Code[50])
        {
            TableRelation = "No. Series";
        }
        field(10; "Entry Date"; Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(11; "Entry Time"; Time)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; Email)
        {
        }
    }

    var
        Age: integer;

    trigger OnInsert()
    begin
        //When insert a record into the table.
        "User ID" := UserId;
        "Entry Date" := Today;
        // "Entry Time" := DT2Time(CurrentDateTime);
        "Entry Time" := Time;
    end;

    trigger OnModify()
    begin
        // when a field is on a table is mondified
        Message('Yello !');
    end;

    trigger OnDelete()
    begin
        //deleting a record on a table
        //
    end;

    trigger OnRename()
    begin
    end;

}