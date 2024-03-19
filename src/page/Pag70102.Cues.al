namespace System.Automation;

page 70102 Cues
{
    Caption = 'Approvals';
    PageType = CardPart;
    RefreshOnActivate = true;
    ShowFilter = false;
    SourceTable = "Approvals Activities Cue";

    layout
    {
        area(content)
        {
            cuegroup(Approvals)
            {
                Caption = 'Pending Approvals';
                CuegroupLayout=Wide;

                field("Requests Sent for Approval"; Rec."Requests Sent for Approval")
                {
                    ApplicationArea = Suite;
                    DrillDownPageID = "Approval Entries";
                    ToolTip = 'Specifies requests for certain documents, cards, or journal lines that your approver must approve before you can proceed.';
                }
                field("Requests to Approve"; Rec."Requests to Approve")
                {
                    ToolTip = 'Specifies requests for certain documents, cards, or journal lines that you must approve for other users before they can proceed.';
                    ApplicationArea = Suite;
                    DrillDownPageID = "Requests to Approve";
                    // Or use a trigger
                    // trigger OnDrillDown()
                    // begin
                    //     Page.Run(Page::"Requests to Approve");
                    // end;
                    
                }
            }
        }

    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
        // Retrieve basing on User ID logged in to business central
        Rec.SetRange("User ID Filter", UserId);
    end;
}
