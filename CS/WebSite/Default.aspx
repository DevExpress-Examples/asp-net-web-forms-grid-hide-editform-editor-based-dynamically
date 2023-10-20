<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"
    MasterPageFile="~/MasterPage.master" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" ID="CC" runat="Server">
    <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="ads"
        KeyFieldName="CategoryID" Width="750px" OnCellEditorInitialize="grid_CellEditorInitialize">
        <Columns>
            <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButton="True"/>
            <dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" >
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CategoryName" />
            <dx:GridViewDataTextColumn FieldName="Description" />
        </Columns>
    </xd:ASPxGridView>
    <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Categories]">
    </asp:AccessDataSource>
</asp:Content>
