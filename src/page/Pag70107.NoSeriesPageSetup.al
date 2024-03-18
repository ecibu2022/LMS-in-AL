page 70107 "No Series Page Setup"
{
    ApplicationArea = All;
    Caption = 'No Series Page Setup';
    PageType = Card;
    SourceTable = "My No Series";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Primary Key"; Rec."Primary Key")
                {
                    ToolTip = 'Specifies the value of the Primary Key field.';
                }
                field("Author No"; Rec."Author No")
                {
                    ToolTip = 'Specifies the value of the Author No field.';
                }
                field("Book No"; Rec."Book No")
                {
                    ToolTip = 'Specifies the value of the Book No field.';
                }
            }
        }
    }
}
