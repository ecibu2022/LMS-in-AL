table 70101 Books
{
    Caption = 'Books';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Book No."; Code[20])
        {
            Caption = 'Book No.';
        }
        field(2; "Book Name"; Text[200])
        {
            Caption = 'Book Name';
        }
        field(3; "Author Name"; Text[200])
        {
            Caption = 'Author Name';
            TableRelation=Authors;
            trigger OnValidate()
            var
                MyAuthors: Record Authors;
            begin
                MyAuthors.Reset();
                if MyAuthors.Get("Author Name") then begin
                    "Author Email" := MyAuthors."Author Email";
                end;
            end;
        }
        field(4; "Author Email"; Text[200])
        {
            Caption = 'Author Email';
        }
        field(5; Status; Enum "Book Status")
        {
            Caption = 'Status';
            Editable=false;
        }
    }
    keys
    {
        key(PK; "Book No.")
        {
            Clustered = true;
        }
    }

// Assigning No Series to Books
    trigger OnInsert()
    var
        NoSeriesTable: Record "My No Series";
        NoSeriesCodeUnit: Codeunit NoSeriesManagement;
    begin
        // Check if Book No. field is empty set number series for it automatically
        if "Book No." = '' then begin
            // Get record in No. Series table
            NoSeriesTable.Get();
            NoSeriesTable.TestField("Book No");
            // Initialize the no series
            NoSeriesCodeUnit.InitSeries(NoSeriesTable."Book No", NoSeriesTable."Book No", 0D, "Book No.", NoSeriesTable."Book No");
        end;
    end;

}
