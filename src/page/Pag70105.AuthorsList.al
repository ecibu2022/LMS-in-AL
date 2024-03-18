page 70105 "Authors List"
{
    ApplicationArea = All;
    Caption = 'Authors List';
    PageType = List;
    SourceTable = Authors;
    UsageCategory = Lists;
    ModifyAllowed=false;
    CardPageId="Add Author";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
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
