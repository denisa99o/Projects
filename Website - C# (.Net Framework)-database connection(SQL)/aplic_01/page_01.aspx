<%@ Page Language="C#" AutoEventWireup="true" CodeFile="page_01.aspx.cs" Inherits="page_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lag_1 %>"
            SelectCommand="SELECT * FROM [Clienti]" ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [Clienti] WHERE [id_client] = @original_id_client AND (([nume_client] = @original_nume_client) OR ([nume_client] IS NULL AND @original_nume_client IS NULL)) AND (([prenume_client] = @original_prenume_client) OR ([prenume_client] IS NULL AND @original_prenume_client IS NULL)) AND (([telefon] = @original_telefon) OR ([telefon] IS NULL AND @original_telefon IS NULL)) AND (([limita_credit] = @original_limita_credit) OR ([limita_credit] IS NULL AND @original_limita_credit IS NULL)) AND (([email_client] = @original_email_client) OR ([email_client] IS NULL AND @original_email_client IS NULL)) AND (([data_nastere] = @original_data_nastere) OR ([data_nastere] IS NULL AND @original_data_nastere IS NULL))" 
            InsertCommand="INSERT INTO [Clienti] ([id_client], [nume_client], [prenume_client], [telefon], [limita_credit], [email_client], [data_nastere]) VALUES (@id_client, @nume_client, @prenume_client, @telefon, @limita_credit, @email_client, @data_nastere)" OldValuesParameterFormatString="original_{0}" 
            UpdateCommand="UPDATE [Clienti] SET [nume_client] = @nume_client, [prenume_client] = @prenume_client, [telefon] = @telefon, [limita_credit] = @limita_credit, [email_client] = @email_client, [data_nastere] = @data_nastere WHERE [id_client] = @original_id_client AND (([nume_client] = @original_nume_client) OR ([nume_client] IS NULL AND @original_nume_client IS NULL)) AND (([prenume_client] = @original_prenume_client) OR ([prenume_client] IS NULL AND @original_prenume_client IS NULL)) AND (([telefon] = @original_telefon) OR ([telefon] IS NULL AND @original_telefon IS NULL)) AND (([limita_credit] = @original_limita_credit) OR ([limita_credit] IS NULL AND @original_limita_credit IS NULL)) AND (([email_client] = @original_email_client) OR ([email_client] IS NULL AND @original_email_client IS NULL)) AND (([data_nastere] = @original_data_nastere) OR ([data_nastere] IS NULL AND @original_data_nastere IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id_client" Type="Int32" />
                <asp:Parameter Name="original_nume_client" Type="String" />
                <asp:Parameter Name="original_prenume_client" Type="String" />
                <asp:Parameter Name="original_telefon" Type="String" />
                <asp:Parameter Name="original_limita_credit" Type="Double" />
                <asp:Parameter Name="original_email_client" Type="String" />
                <asp:Parameter Name="original_data_nastere" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id_client" Type="Int32" />
                <asp:Parameter Name="nume_client" Type="String" />
                <asp:Parameter Name="prenume_client" Type="String" />
                <asp:Parameter Name="telefon" Type="String" />
                <asp:Parameter Name="limita_credit" Type="Double" />
                <asp:Parameter Name="email_client" Type="String" />
                <asp:Parameter Name="data_nastere" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nume_client" Type="String" />
                <asp:Parameter Name="prenume_client" Type="String" />
                <asp:Parameter Name="telefon" Type="String" />
                <asp:Parameter Name="limita_credit" Type="Double" />
                <asp:Parameter Name="email_client" Type="String" />
                <asp:Parameter Name="data_nastere" Type="String" />
                <asp:Parameter Name="original_id_client" Type="Int32" />
                <asp:Parameter Name="original_nume_client" Type="String" />
                <asp:Parameter Name="original_prenume_client" Type="String" />
                <asp:Parameter Name="original_telefon" Type="String" />
                <asp:Parameter Name="original_limita_credit" Type="Double" />
                <asp:Parameter Name="original_email_client" Type="String" />
                <asp:Parameter Name="original_data_nastere" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:lag_1 %>" SelectCommand="SELECT [nume_client], [id_client] FROM [Clienti]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Clienti] WHERE [id_client] = @original_id_client AND (([nume_client] = @original_nume_client) OR ([nume_client] IS NULL AND @original_nume_client IS NULL))" InsertCommand="INSERT INTO [Clienti] ([nume_client], [id_client]) VALUES (@nume_client, @id_client)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Clienti] SET [nume_client] = @nume_client WHERE [id_client] = @original_id_client AND (([nume_client] = @original_nume_client) OR ([nume_client] IS NULL AND @original_nume_client IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id_client" Type="Int32" />
                <asp:Parameter Name="original_nume_client" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nume_client" Type="String" />
                <asp:Parameter Name="id_client" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nume_client" Type="String" />
                <asp:Parameter Name="original_id_client" Type="Int32" />
                <asp:Parameter Name="original_nume_client" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:lag_1 %>" SelectCommand="SELECT [id_client], [stare_comanda] FROM [Comenzi] WHERE ([id_client] = @id_client)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="id_client" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label3" runat="server" Text="ID_Client"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Nume Client"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Prenume_Client"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Phone"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Limita_Credit"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Mail"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Data_nastere"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" Width="128px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Nume"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="nume_client" DataValueField="id_client">
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Stare comanda"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="stare_comanda" DataValueField="id_client">
        </asp:DropDownList>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="id_client" HeaderText="id_client" SortExpression="id_client" />
                <asp:BoundField DataField="stare_comanda" HeaderText="stare_comanda" SortExpression="stare_comanda" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:DetailsView>
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_client" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="617px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_client" HeaderText="id_client" ReadOnly="True" SortExpression="id_client" />
                <asp:BoundField DataField="nume_client" HeaderText="nume_client" SortExpression="nume_client" />
                <asp:BoundField DataField="prenume_client" HeaderText="prenume_client" SortExpression="prenume_client" />
                <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
                <asp:BoundField DataField="limita_credit" HeaderText="limita_credit" SortExpression="limita_credit" />
                <asp:BoundField DataField="email_client" HeaderText="email_client" SortExpression="email_client" />
                <asp:BoundField DataField="data_nastere" HeaderText="data_nastere" SortExpression="data_nastere" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <br />
    </div>
    </form>
</body>
</html>
