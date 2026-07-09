// reportextension 55102 ERPG_PurchaseOrder extends "Order"
// {
//     dataset
//     {
//         add("Purchase Header")
//         {
//             column(CompanyLogoPosition; CompanyLogoPosition) { }
//             column(CompanyPicture; DummyCompanyInfo.Picture) { }
//             column(RequestedReceiptDate; "Requested Receipt Date") { }
//             column(RequestedReceiptDateCaption; "Purchase Header".FieldCaption("Requested Receipt Date")) { }

//         }
//     }

//     rendering
//     {
//         layout(BygmaPurchaseOrder_Layout)
//         {
//             Type = RDLC;
//             Caption = 'Bygma Purchase Order (RDLC)';
//             Summary = 'The Bygma Purchase Order (RDLC).';
//             LayoutFile = './Layouts/PurchaseOrder4.rdlc';
//         }
//     }

//     // trigger OnPreReport()
//     // begin
//     //     SalesSetup.Get();
//     //     CompanyLogoPosition := SalesSetup."Logo Position on Documents";
//     //     DummyCompanyInfo.Picture := CompanyInfo.Picture;
//     // end;

//     procedure SetPosition(var parCompanyLogoPosition: Integer)
//     begin
//         CompanyLogoposition := parCompanyLogoPosition;        
//         CompanyInfo.SetAutoCalcFields(Picture);
//         CompanyInfo.Get();
//         DummyCompanyInfo.Picture := CompanyInfo.Picture;
//     end;

//     var
//         DummyCompanyInfo: Record "Company Information";
//         SalesSetup: Record "Sales & Receivables Setup";
//         CompanyLogoPosition: Integer;
// }
