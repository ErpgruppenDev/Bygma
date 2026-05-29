reportextension 55101 ERPG_SalesCrMemo extends "Standard Sales - Credit Memo"
{
    dataset
    {
    }

    rendering
    {
        layout(BygmaSalesCrMemo_Layout)
        {
            Type = RDLC;
            Caption = 'Bygma Sales Credit Memo (RDLC)';
            Summary = 'The Bygma Sales Credit Memo (RDLC).';
            LayoutFile = './Layouts/StandardSalesCreditMemo.rdlc';
        }
    }
}
