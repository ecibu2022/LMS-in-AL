table 70105 "Book Lending Lines"
{
    Caption = 'Book Lending Lines';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Book No"; Code[20])
        {
            Caption = 'Book No';
            TableRelation=Books;

            trigger OnValidate()
            var
                MyBooks: Record Books;
            begin
                MyBooks.Reset();
                if MyBooks.Get("Book No") then begin
                    "Book Title" := MyBooks."Book Name";
                    Publisher := MyBooks."Author Name";
                    "Publisher Email" := MyBooks."Author Email";
                    Status := MyBooks.Status::Available;
                end;
            end;

        }
        field(2; "Book Title"; Text[200])
        {
            Caption = 'Book Title';
            Editable=false;
        }
        field(3; Publisher; Text[200])
        {
            Caption = 'Publisher';
            Editable=false;
        }
        field(4; "Publisher Email"; Text[200])
        {
            Caption = 'Publisher Email';
            Editable=false;
        }
        field(5; "Date"; Date)
        {
            Caption = 'Date';
        }
        field(6; "Lending No"; Code[20])
        {
            Caption = 'Lending No';
            Editable=false;
        }
        field(7; Status; Enum "Book Status")
        {
            Caption = 'Book Status';
            Editable = false;
        }
        
        field(8; "Book Status"; Text[200])
        {

        }
    }
    keys
    {
        key(PK; "Book No","Lending No")
        {
            Clustered = true;
        }
    }
}
