page 70109 "Book Lending Lines"
{
    ApplicationArea = All;
    Caption = 'Book Lending Lines';
    PageType = ListPart;
    SourceTable = "Book Lending Lines";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Book No"; Rec."Book No")
                {
                    ToolTip = 'Specifies the value of the Book No field.';
                    TableRelation=Books;
                }
                field("Lending No"; Rec."Lending No")
                {
                    ToolTip = 'Specifies the value of the Lending No field.';
                }
                field("Book Title"; Rec."Book Title")
                {
                    ToolTip = 'Specifies the value of the Book Title field.';
                }
                field(Publisher; Rec.Publisher)
                {
                    ToolTip = 'Specifies the value of the Publisher field.';
                }
                field("Publisher Email"; Rec."Publisher Email")
                {
                    ToolTip = 'Specifies the value of the Publisher Email field.';
                }
                field("Book Status"; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Book Status field.';
                }
                field("Date"; Rec."Date")
                {
                    ToolTip = 'Specifies the value of the Date field.';
                }
            }
        }
    }
}
