table 70103 "My No Series"
{
    Caption = 'My No Series';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            Caption = 'Primary Key';
            Editable=false;
        }
        field(2; "Author No"; Code[20])
        {
            Caption = 'Author No';
            TableRelation="No. Series";
        }
        field(3; "Book No"; Code[20])
        {
            Caption = 'Book No';
            TableRelation="No. Series";
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
