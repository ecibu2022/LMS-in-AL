enum 70100 "Book Status"
{
    Extensible = true;
    
    value(0; Available)
    {
        Caption = 'Available';
    }
    value(1; Booked)
    {
        Caption = 'Booked';
    }
    value(2; "Out of Order")
    {
        Caption = 'Out of Order';
    }
}
