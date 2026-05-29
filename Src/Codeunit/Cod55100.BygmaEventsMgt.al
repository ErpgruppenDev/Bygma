codeunit 55100 Bygma_EventsMgt
{
    [EventSubscriber(ObjectType::Report, Report::"Standard Sales - Invoice", OnAfterFillRightHeader, '', false, false)]
    local procedure "Standard Sales - Invoice_OnAfterFillRightHeader"(var RightHeader: Record "Name/Value Buffer"; SalesInvoiceHeader: Record "Sales Invoice Header")
    begin
        
    end;


    // [EventSubscriber(ObjectType::Report, Report::"Standard Sales - Invoice", OnAfterFillLeftHeader, '', false, false)]
    // local procedure "Standard Sales - Invoice_OnAfterFillLeftHeader"(var LeftHeader: Record "Name/Value Buffer"; SalesInvoiceHeader: Record "Sales Invoice Header")
    // begin

    //     LeftHeader.DeleteAll();

    //     FillNameValueTable(LeftHeader, SalesInvoiceHeader.FieldCaption("External Document No."), SalesInvoiceHeader."External Document No.");
    //     FillNameValueTable(LeftHeader, SalesInvoiceHeader.FieldCaption("Bill-to Customer No."), SalesInvoiceHeader."Bill-to Customer No.");
    //     FillNameValueTable(LeftHeader, SalesInvoiceHeader.GetCustomerVATRegistrationNumberLbl(), SalesInvoiceHeader.GetCustomerVATRegistrationNumber());
    //     FillNameValueTable(LeftHeader, SalesInvoiceHeader.GetCustomerGlobalLocationNumberLbl(), SalesInvoiceHeader.GetCustomerGlobalLocationNumber());
    //     FillNameValueTable(LeftHeader, InvNoLbl, SalesInvoiceHeader."No.");
    //     FillNameValueTable(LeftHeader, SalesInvoiceHeader.FieldCaption("Order No."), SalesInvoiceHeader."Order No.");
    //     FillNameValueTable(LeftHeader, SalesInvoiceHeader.FieldCaption("Document Date"), Format(SalesInvoiceHeader."Document Date", 0, 4));
    //     FillNameValueTable(LeftHeader, SalesInvoiceHeader.FieldCaption("Due Date"), Format(SalesInvoiceHeader."Due Date", 0, 4));
    //     FillNameValueTable(LeftHeader, PaymentTermsDescLbl, PaymentTerms.Description);
    //     FillNameValueTable(LeftHeader, PaymentMethodDescLbl, PaymentMethod.Description);
    //     //FillNameValueTable(LeftHeader, Cust.GetLegalEntityTypeLbl(), Cust.GetLegalEntityType());
    //     FillNameValueTable(LeftHeader, ShptMethodDescLbl, ShipmentMethod.Description);
    // end;


    local procedure FillNameValueTable(var NameValueBuffer: Record "Name/Value Buffer"; Name: Text; Value: Text)
    var
        KeyIndex: Integer;
    begin
        if Value <> '' then begin
            Clear(NameValueBuffer);
            if NameValueBuffer.FindLast() then
                KeyIndex := NameValueBuffer.ID + 1;

            NameValueBuffer.Init();
            NameValueBuffer.ID := KeyIndex;
            NameValueBuffer.Name := CopyStr(Name, 1, MaxStrLen(NameValueBuffer.Name));
            NameValueBuffer.Value := CopyStr(Value, 1, MaxStrLen(NameValueBuffer.Value));
            NameValueBuffer.Insert();
        end;
    end;

}
