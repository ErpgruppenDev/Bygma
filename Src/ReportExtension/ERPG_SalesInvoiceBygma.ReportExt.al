

reportextension 55100 ERPG_SalesInvoice_Bygma extends "Standard Sales - Invoice"
{
    dataset
    {
    }

    rendering
    {
        layout(BygmaSalesInvoice_Layout)
        {
            Type = RDLC;
            Caption = 'Bygma Sales Invoice (RDLC)';
            Summary = 'The Bygma Sales Invoice (RDLC).';
            LayoutFile = './Layouts/StandardSalesInvoice.rdlc';
        }
    }
}



