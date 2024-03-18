page 70103 "Books List"
{
    ApplicationArea = All;
    Caption = 'Books List';
    PageType = List;
    SourceTable = Books;
    UsageCategory = Lists;
    ModifyAllowed=false;
    CardPageId="Add Book";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
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
