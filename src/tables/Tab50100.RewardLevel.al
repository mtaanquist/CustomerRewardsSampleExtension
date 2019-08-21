table 50100 "CONIT Reward Level"
{
    Caption = 'Reward Level';

    fields
    {
        field(1; Level; Text[20])
        {
            DataClassification = CustomerContent;
        }

        field(2; "Minimum Reward Points"; Integer)
        {
            DataClassification = CustomerContent;

            MinValue = 0;
            NotBlank = true;

            trigger OnValidate();
            var
                RewardLevel: Record "CONIT Reward Level";
                tempPoints: Integer;
            begin
                tempPoints := "Minimum Reward Points";
                RewardLevel.SetRange("Minimum Reward Points", tempPoints);
                if RewardLevel.FindFirst() then
                    Error('Minimum Reward Points must be unique');
            end;
        }
    }

    keys
    {
        key(PK; Level)
        {
            Clustered = true;
        }
        key("Minimum Reward Points"; "Minimum Reward Points") { }
    }

    trigger OnInsert();
    begin

        Validate("Minimum Reward Points");
    end;

    trigger OnModify();
    begin
        Validate("Minimum Reward Points");
    end;
}