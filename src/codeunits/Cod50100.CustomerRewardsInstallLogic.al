codeunit 50100 "CONIT Cust. Rewards Install"
{
    // Customer Rewards Install Logic 
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        SetDefaultCustomerRewardsExtMgtCodeunit();
    end;

    procedure SetDefaultCustomerRewardsExtMgtCodeunit();
    var
        CustomerRewardsExtMgtSetup: Record "CONIT Cust. Rewards Mgt. Setup";
    begin
        CustomerRewardsExtMgtSetup.DeleteAll();
        CustomerRewardsExtMgtSetup.Init();
        // Default Customer Rewards Ext. Mgt codeunit to use for handling events  
        CustomerRewardsExtMgtSetup."Extension Mgt. Codeunit ID" := Codeunit::"CONIT Cust. Rewards Ext. Mgt.";
        CustomerRewardsExtMgtSetup.Insert();
    end;
}