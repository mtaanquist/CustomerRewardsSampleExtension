table 50101 "CONIT Activation Code Info"
{
    Caption = 'Activation Code Information';

    fields
    {
        field(1; "Activation Code"; Text[14])
        {
            DataClassification = CustomerContent;

            Description = 'Activation code used to activate Customer Rewards';
        }

        field(2; "Date Activated"; Date)
        {
            DataClassification = CustomerContent;

            Description = 'Date Customer Rewards was activated';
        }

        field(3; "Expiration Date"; Date)
        {
            DataClassification = CustomerContent;

            Description = 'Date Customer Rewards activation expires';
        }
    }

    keys
    {
        key(PK; "Activation Code")
        {
            Clustered = true;
        }
    }
}