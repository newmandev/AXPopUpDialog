<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QRMS.aspx.cs" Inherits="QRMS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>QRMS - BDS_SCM_MTR_DB HOLDING</title>
    <style type="text/css">
        body {
            font-family: 'Segoe UI', Verdana, Arial;
            width: 500px;
            height: 600px;
            font-size: 14px;
        }
    </style>
    <script type="text/javascript">
        function closeWindow() {
            window.close();
        }
    </script>
    <telerik:RadStyleSheetManager id="RadStyleSheetManager1" runat="server" />
</head>
<body>
    <form id="form1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
        </Scripts>
    </telerik:RadScriptManager>
    <script type="text/javascript">
        //Put your JavaScript code here.
    </script>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
    </telerik:RadAjaxManager>
    <div>
        <table width="400">
            <tr>
                <td>Date Scanned</td>
                <td><telerik:RadDatePicker ID="dtpDateScan" runat="server">
                    <DateInput DateFormat="yyyy-MM-dd" runat="server"/>
                    </telerik:RadDatePicker>
                </td>
            </tr>
            <tr>
                <td>Doc Number</td>
                <td><telerik:RadTextBox ID="txtDocNo" runat="server" MaxLength="12"/></td>
            </tr>
            <tr>
                <td>Doc Type</td>
                <td><telerik:RadDropDownList ID="ddlDocType" runat="server">
                        <Items>
                            <telerik:DropDownListItem Text="Work Orders" Value="WO" />
                            <telerik:DropDownListItem Text="Receiving Reports" Value="RR" />
                        </Items>
                    </telerik:RadDropDownList>
                </td>
            </tr>
            <tr>
                <td>Plant Location</td>
                <td><telerik:RadTextBox ID="txtPlantLoc" runat="server" MaxLength="5"/></td>
            </tr>
            <tr>
                <td>RCCN</td>
                <td><telerik:RadTextBox ID="txtRCCN" runat="server" MaxLength="8"/></td>
            </tr>
            <tr>
                <td>Part Number</td>
                <td><telerik:RadTextBox ID="txtPartNo" runat="server" MaxLength="30"/></td>
            </tr>
            <tr>
                <td>PO Number</td>
                <td><telerik:RadTextBox ID="txtPoNo" runat="server" MaxLength="10"/></td>
            </tr>
            <tr>
                <td>Number of Pages</td>
                <td><telerik:RadTextBox ID="txtNoPages" runat="server" MaxLength="10"/></td>
            </tr>
            <tr>
                <td>Model</td>
                <td><telerik:RadTextBox ID="txtModel" runat="server" MaxLength="10"/></td>
            </tr>
            <tr>
                <td>Chg_Ltr</td>
                <td><telerik:RadTextBox ID="txtChgLtr" runat="server" MaxLength="4"/></td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
                <td>
                </td>
                <td>
                    <telerik:RadButton runat="server" ID="btnCancel" Text="CANCEL" OnClientClicked="closeWindow"/>
                    <telerik:RadButton runat="server" ID="btnSubmit" Text="SUBMIT"/>
                </td>
            </tr>
        </table>
        <br />
        <telerik:RadLabel runat="server" ID="lblError" BackColor="#D73A49" style="color:white;" Width="375" Visible="false">
            &nbsp; An error has ocurred. Please close this window.
        </telerik:RadLabel>
    </div>
    </form>
</body>
</html>
