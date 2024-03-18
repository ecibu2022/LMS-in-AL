table 70100 "Cues Table"
{
    Caption = 'Cues Table';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; id; Code[20])
        {
            Caption = 'id';
        }
        field(2; Requests; Integer)
        {
            Caption = 'Requests';
        }
    }
    keys
    {
        key(PK; id)
        {
            Clustered = true;
        }
    }
}
