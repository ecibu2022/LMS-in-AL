table 70102 Authors
{
    Caption = 'Authors';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Author No."; Code[20])
        {
            Caption = 'Author No.';
        }
        field(2; "Author Name"; Text[200])
        {
            Caption = 'Author Name';
        }
        field(3; "Author Email"; Text[200])
        {
            Caption = 'Author Email';
        }
    }
    keys
    {
        key(PK; "Author No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        NoSeriesTable: Record "My No Series";
        NoSeriesCodeUnit: Codeunit NoSeriesManagement;
    begin
        // Check if Author No. field is empty set number series for it automatically
        if "Author No." = '' then begin
            // Get record in No. Series table
            NoSeriesTable.Get();
            NoSeriesTable.TestField("Author No");
            // Initialize the no series
            NoSeriesCodeUnit.InitSeries(NoSeriesTable."Author No", NoSeriesTable."Author No", 0D, "Author No.", NoSeriesTable."Author No");
        end;
    end;
}
