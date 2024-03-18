codeunit 70100 "LMS Management"
{

    // Booking Book Procedure
    procedure BookBooking(Rec: Record "Lending Books Header")
    begin
        Rec.Status := Rec.Status::Approved;
        Rec.Status := Rec.Status::Approved;
        LendingLinesTable.Reset();
        LendingLinesTable.SetRange("Lending No", Rec."Book No");
        // Check if book is booked morethan once
        if LendingLinesTable.FindSet() then begin
            repeat//Makes all lines to be booked for that specific document
                LendingLinesTable.Status := LendingLinesTable.Status::Booked;
                LendingLinesTable.Modify();
                // check if book was booked
                CheckIfBookIsBooked.Reset();
                if CheckIfBookIsBooked.Get(LendingLinesTable."Book No") then begin
                    CheckIfBookIsBooked.Status := CheckIfBookIsBooked.Status::Booked;
                    CheckIfBookIsBooked.Modify();
                end;
            until LendingLinesTable.Next() = 0;
        end;
        Rec.Modify();
    end;
    

    var
        LendingLinesTable: Record "Book Lending Lines";
        CheckIfBookIsBooked: Record Books;
        }
