table 50102 "CONIT Cust. Rewards Mgt. Setup"
{
    Caption = 'Customer Rewards Mgt. Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            DataClassification = CustomerContent;
        }

        field(2; "Extension Mgt. Codeunit ID"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Customer Rewards Ext. Mgt. Codeunit ID';
            TableRelation = "CodeUnit Metadata".ID;
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}