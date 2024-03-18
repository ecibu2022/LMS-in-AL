page 70104 "Add Book"
{
    ApplicationArea = All;
    Caption = 'Add Book';
    PageType = Card;
    SourceTable = Books;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Book No."; Rec."Book No.")
                {
                    ToolTip = 'Specifies the value of the Book No. field.';
                }
                field("Book Name"; Rec."Book Name")
                {
                    ToolTip = 'Specifies the value of the Book Name field.';
                }
                field("Author Name"; Rec."Author Name")
                {
                    ToolTip = 'Specifies the value of the Author Name field.';
                }
                field("Author Email"; Rec."Author Email")
                {
                    ToolTip = 'Specifies the value of the Author Email field.';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.';
                }
            }
        }
    }
}
