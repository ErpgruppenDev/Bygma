// namespace Bygma.Bygma;
// using Microsoft.Sales.History;

// codeunit 50100 CalcVAT_BygmaWay
// {


//     [EventSubscriber(ObjectType::Report, Report::"Standard Sales - Invoice", OnAfterGetSalesHeader, '', false, false)]
//     local procedure "Standard Sales - Invoice_OnAfterGetSalesHeader"(var Sender: Report "Standard Sales - Invoice"; SalesInvoiceHeader: Record "Sales Invoice Header")
//     var
//         RptSalesInv: report "Standard Sales - Invoice";
//     begin
//         RptSalesInv.CalcVatAmount(SalesInvoiceHeader."No.");
//     end;



// }
