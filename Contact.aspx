﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Projekat.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%;">
        <tr>
            <td style="width: 322px">PROMENA ODLIKOVANJA I ČINA OFICIRA</td>
        </tr>
        <tr>
            <td style="width: 322px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 322px">Izaberi oficira:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 322px">Promeni odlikovanje:</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 322px">Promeni čin:</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList></td>
        </tr>
    </table>
</asp:Content>
