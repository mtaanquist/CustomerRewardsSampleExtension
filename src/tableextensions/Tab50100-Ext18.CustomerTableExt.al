tableextension 50100 "CONIT CustomerTable Ext." extends Customer
{
    fields
    {
        field(50100; "CONIT Reward Points"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Reward Points';
            MinValue = 0;
        }
    }
}