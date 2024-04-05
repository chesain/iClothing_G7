<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Group7__iCLOTHINGApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 75px;
        }
        .auto-style3 {
            width: 75px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 75px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-weight: 700; text-align: center; font-size: x-large; color: #3366FF">
            <h1>Customer Login </h1>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" style="font-weight: 700">Username:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtuser" runat="server" Width="254px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-weight: 700">Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtpass" runat="server" Width="252px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="117px" />
                    <asp:Button ID="Button2" runat="server" BackColor="Red" OnClick="Button2_Click" Text="Admin Login" Width="140px" />
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
