page 70108 "Book Lending Page"
{
    ApplicationArea = All;
    Caption = 'Book Lending Page';
    PageType = Card;
    SourceTable = "Lending Books Header";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Book No"; Rec."Book No")
                {
                    ToolTip = 'Specifies the value of the Book No field.';
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

            // Lending Lines
            part(BLL; "Book Lending Lines")
            {
                // Linking Header and Lines
                SubPageLink = "Lending No" = field("Book No");
            }
        }
    }


    actions
    {
        area(Processing)
        {
            action(Submit)
            {
                Caption = 'Re-open';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = Redo;

                // Update status to open
                trigger OnAction()
                begin
                    Rec.Status := Rec.Status::Open;
                    LendingLinesTable.Reset();
                    LendingLinesTable.SetRange("Lending No", Rec."Book No");
                    // Check if book is booked morethan once
                    if LendingLinesTable.FindSet() then begin
                        repeat//Makes all lines to be booked for that specific document
                            LendingLinesTable.Status := LendingLinesTable.Status::Available;
                            LendingLinesTable.Modify();
                        until LendingLinesTable.Next() = 0;
                    end;
                    Rec.Modify();
                end;
            }

            action(Approve)
            {
                Caption = 'Approve';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                Image = Redo;

                // Update status to approved
                trigger OnAction()
                begin
                    // Booking Function in LMS Management codeunit
                    CallLMSCodeUnit.BookBooking(Rec);
                end;
            }
        }

    }


    var
        LendingLinesTable: Record "Book Lending Lines";
        CheckIfBookIsBooked: Record Books;
        CallLMSCodeUnit: Codeunit "LMS Management";

}
