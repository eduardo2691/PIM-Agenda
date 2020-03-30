<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="Auditorio.aspx.cs" Inherits="Agendamento.Auditorio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" Text="Inserir Auditório"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Sala"></asp:Label>
    <br />
    <asp:TextBox ID="txbSala" runat="server" Width="89px" ></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Poltronas"></asp:Label>
    <br />
    <asp:TextBox ID="txbPoltrona" runat="server" Width="89px"></asp:TextBox>
    <br />
    <asp:Button ID="btnInserir" runat="server" Font-Bold="True" OnClick="btnInserir_Click" Text="Inserir" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Auditórios"></asp:Label>
<br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="sala" DataSourceID="SqlDataSourceAuditorio" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-top: 9px" Width="215px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="sala" HeaderText="sala" ReadOnly="True" SortExpression="sala" />
        <asp:BoundField DataField="capacidade" HeaderText="capacidade" SortExpression="capacidade" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSourceAuditorio" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [auditorio] WHERE [sala] = @sala" InsertCommand="INSERT INTO [auditorio] ([sala], [capacidade]) VALUES (@sala, @capacidade)" SelectCommand="SELECT [sala], [capacidade] FROM [auditorio]" UpdateCommand="UPDATE [auditorio] SET [capacidade] = @capacidade WHERE [sala] = @sala">
    <DeleteParameters>
        <asp:Parameter Name="sala" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="sala" Type="String" />
        <asp:Parameter Name="capacidade" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="capacidade" Type="Int32" />
        <asp:Parameter Name="sala" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
