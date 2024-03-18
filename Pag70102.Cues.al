page 70102 Cues
{
    ApplicationArea = All;
    Caption = 'Cues';
    PageType = CardPart;
    SourceTable="Cues Table";
    
    layout
    {
        area(content)
        {
            cuegroup(General)
            {
                Caption = 'General';
                CuegroupLayout=Wide;
                
                field(Requests;Rec.Requests)
                {
                    ApplicationArea=All;

                    trigger OnDrillDown()
                    begin
                        Page.Run(Page::"Requests to Approve");
                    end;
                }
                
            }
        }
    }
}
