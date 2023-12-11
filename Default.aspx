<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Projekat._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
        
        
        Naziv odlikovanja:
        <br />
        
        
        
        <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="NazivOdlikovanja" DataValueField="NazivOdlikovanja">
        </asp:DropDownList>
        <br />
        Naziv cina:<br />
        <asp:DropDownList ID="DropDownList2" runat="server" DataTextField="NazivCina" DataValueField="NazivCina">
        </asp:DropDownList>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Prikazi" />
        
        
        
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Dodaj novog oficira" />
        
        
        
    </div>

</asp:Content>
