pageextension 50101 "CONIT CustomerListExt" extends "Customer List"
{
    actions
    {
        addfirst("&Customer")
        {
            action("CONIT Reward Levels")
            {
                ApplicationArea = All;
                Caption = 'Reward Levels';
                Image = CustomerRating;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Open the list of reward levels.';


                trigger OnAction();
                begin
                    if CustomerRewardsExtMgt.IsCustomerRewardsActivated() then
                        CustomerRewardsExtMgt.OpenRewardsLevelPage()
                    else
                        CustomerRewardsExtMgt.OpenCustomerRewardsWizard();
                end;
            }
        }
    }

    var
        CustomerRewardsExtMgt: Codeunit "CONIT Cust. Rewards Ext. Mgt.";
}