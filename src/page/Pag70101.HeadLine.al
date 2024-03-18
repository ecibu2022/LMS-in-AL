page 70101 "Head Line"
{
    ApplicationArea = All;
    Caption = 'Head Line';
    PageType = HeadlinePart;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field(Heading1; Heading1)
                {
                    ApplicationArea = Basic, Suite;
                }
                field(Heading2; Heading2)
                {
                    ApplicationArea = Basic, Suite;
                }
                field(Heading3; Heading3)
                {
                    ApplicationArea = Basic, Suite;
                }
            }

        }
    }

    var
        HeadLine: Codeunit "RC Headlines Page Common";
        Heading1: Label 'Welcome to Mike''s Library Management System';
        Heading2: Label 'Thanks for logging in';
        Heading3: Label 'Book a book, return it and imporve on your knowledge';
}
