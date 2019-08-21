pageextension 50100 "CONIT CustomerCardExt" extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field("CONIT RewardLevel"; RewardLevel)
            {
                ApplicationArea = All;
                Caption = 'Reward Level';
                Description = 'Reward level of the customer.';
                ToolTip = 'Specifies the level of reward that the customer has at this point.';
                Editable = false;
            }

            field("CONIT RewardPoints"; "CONIT Reward Points")
            {
                ApplicationArea = All;
                Caption = 'Reward Points';
                Description = 'Reward points accrued by customer';
                ToolTip = 'Specifies the total number of points that the customer has at this point.';
                Editable = false;
            }
        }
    }

    trigger OnAfterGetRecord();
    var
        CustomerRewardsMgtExt: Codeunit "CONIT Cust. Rewards Ext. Mgt.";
    begin
        // Get the reward level associated with reward points 
        RewardLevel := CustomerRewardsMgtExt.GetRewardLevel("CONIT Reward Points");
    end;

    var
        RewardLevel: Text;
}