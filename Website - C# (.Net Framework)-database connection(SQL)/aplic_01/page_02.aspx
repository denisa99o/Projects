<%@ Page Language="C#" AutoEventWireup="true" CodeFile="page_02.aspx.cs" Inherits="page_02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="color: #000099; text-align: left; background-color: #FFCCCC">
    
        <br />
        <h1>
            <asp:Label ID="Label7" runat="server" ForeColor="#000099" Text="Detalii vanzare"></asp:Label>
        </h1>
        <br />
&nbsp;
        <p>
            <asp:Label ID="Label8" runat="server" ForeColor="#003399" Text="Cauta dupa numele clientului"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Nume"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nume_client" DataValueField="nume_client">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show data" Width="150px" />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lag_1 %>" SelectCommand="SELECT [nume_client] FROM [Clienti]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Nume_client"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Prenume_client"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Numarul produselor cumparate"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" AutoPostBack="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Pret/produs"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Suma totala de plata"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" AutoPostBack="True"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <h2>
            <asp:Label ID="Label12" runat="server" Text="Introducere de produse noi"></asp:Label>
        </h2>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:lag_1 %>" DeleteCommand="DELETE FROM [Produse] WHERE [cod_art] = @original_cod_art AND (([cod_producator] = @original_cod_producator) OR ([cod_producator] IS NULL AND @original_cod_producator IS NULL)) AND [denumire] = @original_denumire AND (([tip_produs_par] = @original_tip_produs_par) OR ([tip_produs_par] IS NULL AND @original_tip_produs_par IS NULL)) AND (([pret_producator] = @original_pret_producator) OR ([pret_producator] IS NULL AND @original_pret_producator IS NULL))" InsertCommand="INSERT INTO [Produse] ([cod_art], [cod_producator], [denumire], [tip_produs_par], [pret_producator]) VALUES (@cod_art, @cod_producator, @denumire, @tip_produs_par, @pret_producator)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Produse]" UpdateCommand="UPDATE [Produse] SET [cod_producator] = @cod_producator, [denumire] = @denumire, [tip_produs_par] = @tip_produs_par, [pret_producator] = @pret_producator WHERE [cod_art] = @original_cod_art AND (([cod_producator] = @original_cod_producator) OR ([cod_producator] IS NULL AND @original_cod_producator IS NULL)) AND [denumire] = @original_denumire AND (([tip_produs_par] = @original_tip_produs_par) OR ([tip_produs_par] IS NULL AND @original_tip_produs_par IS NULL)) AND (([pret_producator] = @original_pret_producator) OR ([pret_producator] IS NULL AND @original_pret_producator IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_cod_art" Type="Int32" />
                <asp:Parameter Name="original_cod_producator" Type="Int32" />
                <asp:Parameter Name="original_denumire" Type="String" />
                <asp:Parameter Name="original_tip_produs_par" Type="String" />
                <asp:Parameter Name="original_pret_producator" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cod_art" Type="Int32" />
                <asp:Parameter Name="cod_producator" Type="Int32" />
                <asp:Parameter Name="denumire" Type="String" />
                <asp:Parameter Name="tip_produs_par" Type="String" />
                <asp:Parameter Name="pret_producator" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cod_producator" Type="Int32" />
                <asp:Parameter Name="denumire" Type="String" />
                <asp:Parameter Name="tip_produs_par" Type="String" />
                <asp:Parameter Name="pret_producator" Type="Double" />
                <asp:Parameter Name="original_cod_art" Type="Int32" />
                <asp:Parameter Name="original_cod_producator" Type="Int32" />
                <asp:Parameter Name="original_denumire" Type="String" />
                <asp:Parameter Name="original_tip_produs_par" Type="String" />
                <asp:Parameter Name="original_pret_producator" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Text="Cod produs"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="cod_art" runat="server" AutoPostBack="True"></asp:TextBox>
        <br />
        <asp:Label ID="Label13" runat="server" Text="Denumire produs"></asp:Label>
&nbsp;<asp:TextBox ID="denumire" runat="server" AutoPostBack="True"></asp:TextBox>
        <br />
        <asp:Label ID="Label14" runat="server" Text="Tip produs"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tip_produs_par" runat="server" AutoPostBack="True"></asp:TextBox>
        <br />
&nbsp;&nbsp;
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Adauga in catalogul magazinului un nou produs" Width="361px" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label19" runat="server" Text="Mesaj de informare"></asp:Label>
&nbsp;
        <asp:TextBox ID="message" runat="server" AutoPostBack="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label22" runat="server" Text="Update-Catalogul dupa inserarea produsului:"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="cod_art" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="cod_art" HeaderText="cod_art" ReadOnly="True" SortExpression="cod_art" />
                <asp:BoundField DataField="cod_producator" HeaderText="cod_producator" SortExpression="cod_producator" />
                <asp:BoundField DataField="denumire" HeaderText="denumire" SortExpression="denumire" />
                <asp:BoundField DataField="tip_produs_par" HeaderText="tip_produs_par" SortExpression="tip_produs_par" />
                <asp:BoundField DataField="pret_producator" HeaderText="pret_producator" SortExpression="pret_producator" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
        <h3>
            <asp:Label ID="Label18" runat="server" Text="Sterge un produs"></asp:Label>
        </h3>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label21" runat="server" Text="Alege un cod de produs pe care doresti sa il stergi"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" AutoPostBack="True"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Elimina un produs din catalog" />
&nbsp;</p>
        <p>
            <asp:Label ID="Label20" runat="server" Text="Mesaj de informare"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="MessageBox" runat="server" AutoPostBack="True" Width="356px"></asp:TextBox>
        </p>
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="cod_art" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="cod_art" HeaderText="cod_art" ReadOnly="True" SortExpression="cod_art" />
                <asp:BoundField DataField="cod_producator" HeaderText="cod_producator" SortExpression="cod_producator" />
                <asp:BoundField DataField="denumire" HeaderText="denumire" SortExpression="denumire" />
                <asp:BoundField DataField="tip_produs_par" HeaderText="tip_produs_par" SortExpression="tip_produs_par" />
                <asp:BoundField DataField="pret_producator" HeaderText="pret_producator" SortExpression="pret_producator" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
