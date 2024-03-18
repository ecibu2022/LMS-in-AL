codeunit 70100 "LMS Management"
{

    // Booking Book Procedure
    procedure BookBooking(Rec: Record "Lending Books Header")
    begin
        Rec.Status := Rec.Status::Approved;
        // Booking Function in LMS Management codeunit
        CallLMSCodeUnit.BookBooking(Rec);
    end;
    

    var
        LendingLinesTable: Record "Book Lending Lines";
        CheckIfBookIsBooked: Record Books;
        CallLMSCodeUnit: Codeunit "LMS Management";
}
