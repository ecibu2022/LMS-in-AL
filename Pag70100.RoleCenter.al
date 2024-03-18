page 70100 "Role Center"
{
    ApplicationArea = All;
    Caption = 'Role Center';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            // Adding Headline Area
            part("HeadLine"; "Head Line")
            {

            }

            // Adding Cues
            part("My LibraryMS Cues"; "Cues")
            {

            }

        }
    }

    actions
    {
        // Action Area
        area(Creation)
        {
            action(New)
            {
                ApplicationArea = All;
                Caption = 'Authors';
                RunPageMode = Create;
                RunObject = page "Add Author";
            }

            action(View)
            {
                ApplicationArea = All;
                Caption = 'Books';
                RunPageMode = Create;
                RunObject = page "Add Book";
            }
            action(Borrowed)
            {
                ApplicationArea = All;
                Caption = 'Lend Book';

                RunObject = page "Book Lending Page";
            }
        }

        area(Reporting)
        {
            action(open)
            {
                ApplicationArea = All;
                Caption = 'Get Report';
                Image = Alerts;

                // RunObject = report "Get Books Report";
            }
        }

        area(Embedding)
        {
            action("No. Series Setup")
            {
                ApplicationArea = All;
                Caption = 'Setup No. Series';
                RunObject = page "No Series Page Setup";
            }
        }
        // End of Action Area

        // Menu Item
        area(Sections)
        {
            group(Books)
            {
                action(MenuItem1)
                {
                    Caption = 'View Books';
                    RunObject = page "Books List";
                }
            }

            group(Authors)
            {
                action(MenuItem2)
                {
                    Caption = 'View Authors';
                    RunObject = page "Authors List";
                }
            }
        }
        // End of Menu Item

    }
}


profile "Library MS Profile"
{
    Caption = 'Library MS Role Center';
    RoleCenter = "Role Center";
}

