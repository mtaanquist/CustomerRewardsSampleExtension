page 50101 "CONIT Rewards Level List"
{
    Caption = 'Rewards Level List';
    PageType = List;
    SourceTable = "CONIT Reward Level";
    SourceTableView = sorting ("Minimum Reward Points") order(ascending);

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Level; Level)
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies the level of reward that the customer has at this point.';
                }

                field("Minimum Reward Points"; "Minimum Reward Points")
                {
                    ApplicationArea = All;
                    Tooltip = 'Specifies the number of points that customers must have to reach this level.';
                }
            }
        }
    }

    trigger OnOpenPage();
    begin

        if (not CustomerRewardsExtMgt.IsCustomerRewardsActivated()) then
            Error(NotActivatedTxt);
    end;

    var
        CustomerRewardsExtMgt: Codeunit "CONIT Cust. Rewards Ext. Mgt.";
        NotActivatedTxt: Label 'Customer Rewards is not activated';
}