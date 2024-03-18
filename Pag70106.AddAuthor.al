page 70106 "Add Author"
{
    ApplicationArea = All;
    Caption = 'Add Author';
    PageType = Card;
    SourceTable = Authors;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Author No."; Rec."Author No.")
                {
                    ToolTip = 'Specifies the value of the Author No. field.';
                }
                field("Author Name"; Rec."Author Name")
                {
                    ToolTip = 'Specifies the value of the Author Name field.';
                }
                field("Author Email"; Rec."Author Email")
                {
                    ToolTip = 'Specifies the value of the Author Email field.';
                }
            }
        }
    }
}
