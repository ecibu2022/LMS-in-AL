table 70104 "Lending Books Header"
{
    Caption = 'Lending Books Header';
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
                    "Book Name" := MyBooks."Book Name";
                    "Author Name":=MyBooks."Author Name";
                    "Author Email":=MyBooks."Author Email";
                    Status:=Status::Open;
                end;
            end;

        }
        field(2; "Book Name"; Text[200])
        {
            Caption = 'Book Name';
        }
        field(3; "Author Name"; Text[200])
        {
            Caption = 'Author Name';
        }
        field(4; "Author Email"; Text[200])
        {
            Caption = 'Author Email';
        }
        field(5; Status; Enum Status)
        {
            Caption = 'Status';
            Editable=false;
        }
    }
    keys
    {
        key(PK; "Book No")
        {
            Clustered = true;
        }
    }
}
