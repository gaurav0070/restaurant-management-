<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="table.aspx.cs" Inherits="table" %>

<script runat="server">

  
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
  
     <style type="text/css">
        .auto-style1 {
            width: 281px;
        }
        .auto-style3 {
            height: 115px;
        }
        .auto-style5 {
            height: 85px;
        }
        .auto-style7 {
            height: 102px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <br />
    <div class="container-fluid">
        <table class="table table-bordered table-hover">
            <tr>
                <th scope="row">CUSTOMER NAME</th>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="219px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name Cannot Be Empty" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Overline="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                 <th scope="row">NO OF PERSONS</th>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Number" Width="218px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a Valid Number" Font-Bold="True" Font-Names="Franklin Gothic Demi" Font-Overline="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="table-danger">
                <th scope="row">SELECT DATE</th>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <th scope="row">SELECT TIME</th>
                <td class="auto-style3">&nbsp; Start Time &nbsp;&nbsp;
                    <asp:DropDownList class="btn btn-danger" ID="DropDownList1" runat="server">
                    <asp:ListItem>10:00Am</asp:ListItem>
                    <asp:ListItem>10:30 Am</asp:ListItem>
                    <asp:ListItem>11:00 Am</asp:ListItem>
                    </asp:DropDownList>
                        &nbsp;End Time&nbsp;&nbsp;
                    <asp:DropDownList class="btn btn-danger" ID="DropDownList2" runat="server">
                        <asp:ListItem>10:00Am</asp:ListItem>
                        <asp:ListItem>10:30 Am</asp:ListItem>
                        <asp:ListItem>11:00 Am</asp:ListItem>
                    </asp:DropDownList>
&nbsp;
                    <asp:Button ID="Button1" runat="server" class="btn btn-outline-success"  Text="Check Availability" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <th scope="row">&nbsp;</th>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Visible="False">
                        <asp:ListItem>Table1</asp:ListItem>
                        <asp:ListItem >Table2</asp:ListItem>
                        <asp:ListItem >Table3</asp:ListItem>
                        <asp:ListItem >Table4</asp:ListItem>
                        <asp:ListItem >Table5</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="book now" Width="123px" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
  
    <br />
    <asp:Label ID="Label2" runat="server"></asp:Label>
    <br />
    <br />
       </div>
</asp:Content>

