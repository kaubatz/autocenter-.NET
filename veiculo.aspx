<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="veiculo.aspx.cs" Inherits="autocenter.veiculo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>AutoCenter</title>
    <link rel ="stylesheet" href="css/css.css"
</head>
<body style="height: 805px">
    <form id="form1" runat="server" aria-atomic="False">
        <div style="height: 37px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri Light" Font-Size="XX-Large" ForeColor="#66CCFF" Text="Cadastro de Veículos" Width="500px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnNovo" runat="server"  Text="NOVO +" Width="95px" OnClick="btnNovo_Click" CssClass="botao"/>
        </div>
        <div style="height: 31px">
        </div>
        <div style="height: 35px">
            <asp:Label ID="lblID" runat="server" Font-Bold="True" ForeColor="#3399FF" Height="25px" Text="ID" Width="100px"></asp:Label>
            <asp:TextBox ID="txtID" runat="server" Height="20px" Width="62px"></asp:TextBox>
            &nbsp;
            <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" Width="95px" Height="20px" OnClick="btnPesquisar_Click" CssClass="botao" />
        &nbsp;
            <asp:Button ID="btnExcluir" runat="server" Text="Excluir" Width="95px" Height="20px" OnClick="btnExcluir_Click" CssClass="botao" />
        </div>
        <div style="height: 35px">
            <asp:Label ID="lblMarca" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="#3399FF" Height="25px" Text="Marca" Width="100px"></asp:Label>
            <asp:TextBox ID="txtMarca" runat="server" Height="20px" MaxLength="100" Width="500px"></asp:TextBox>
        </div>
        <div style="height: 35px">
            <asp:Label ID="lblModelo" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="#3399FF" Height="25px" Text="Modelo" Width="100px"></asp:Label>
            <asp:TextBox ID="txtModelo" runat="server" Height="20px" MaxLength="100" Width="500px"></asp:TextBox>
        </div>
        <div style="height: 35px">
            <asp:Label ID="lblCor" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="#3399FF" Height="25px" Text="Cor" Width="100px"></asp:Label>
            <asp:TextBox ID="txtCor" runat="server" Height="20px" MaxLength="20" Width="250px"></asp:TextBox>
        </div>
        <div style="height: 35px">
            <asp:Label ID="lblCategoria" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="#3399FF" Height="25px" Text="Categoria" Width="100px"></asp:Label>
            <asp:DropDownList ID="listCategoria" runat="server" Font-Bold="False" Font-Names="Calibri Light" Height="20px" Width="250px">
                <asp:ListItem>Hatch</asp:ListItem>
                <asp:ListItem>Sedan</asp:ListItem>
                <asp:ListItem>Caminhonete</asp:ListItem>
                <asp:ListItem>SUV</asp:ListItem>
                <asp:ListItem>PickUp</asp:ListItem>
                <asp:ListItem>SW</asp:ListItem>
                <asp:ListItem>Sport</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div style="height: 35px">
            <asp:Label ID="lblAno" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="#3399FF" Height="25px" Text="Ano" Width="100px"></asp:Label>
            <asp:TextBox ID="txtAno" runat="server" Height="20px" MaxLength="4" Width="100px"></asp:TextBox>
        </div>
        <div style="height: 35px">
            <asp:Label ID="lblMotorizacao" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="#3399FF" Height="25px" Text="Motorização" Width="100px"></asp:Label>
            <asp:TextBox ID="txtMotorizacao" runat="server" Height="20px" MaxLength="3" Width="100px"></asp:TextBox>
        </div>
        <div style="height: 35px">
            <asp:Label ID="lblCombustivel" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="#3399FF" Height="25px" Text="Combustível" Width="100px"></asp:Label>
            <asp:DropDownList ID="listCombustivel" runat="server" Font-Bold="False" Font-Names="Calibri Light" Height="20px" Width="250px">
                <asp:ListItem Value="Alcool">Álcool</asp:ListItem>
                <asp:ListItem>Gasolina</asp:ListItem>
                <asp:ListItem>Flex</asp:ListItem>
                <asp:ListItem>Diesel</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div style="height: 35px">
            <asp:Label ID="lblID7" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="#3399FF" Height="25px" Text="Câmbio" Width="100px"></asp:Label>
            <asp:DropDownList ID="listCambio" runat="server" Font-Bold="False" Font-Names="Calibri Light" Height="20px" Width="250px">
                <asp:ListItem Value="Manual">Manual</asp:ListItem>
                <asp:ListItem Value="Automatico">Automático</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div style="height: 35px; width: 1051px">
            <asp:Label ID="lblID8" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="#3399FF" Height="25px" Text="KM" Width="100px"></asp:Label>
            <asp:TextBox ID="txtKM" runat="server" Height="20px" MaxLength="6" Width="100px"></asp:TextBox>
        </div>
        <div style="height: 35px">
            <asp:Label ID="lblID15" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="#3399FF" Height="25px" Text="Adicionais" Width="100px"></asp:Label>
            <asp:CheckBox ID="cbAr" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="Black" Height="25px" Text="AR" Width="100px" />
            <asp:CheckBox ID="cbVidros" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="Black" Height="25px" Text="Vidros" Width="100px" />
            <asp:CheckBox ID="cbDirecao" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="Black" Height="25px" Text="Direção" Width="100px" />
        </div>
        <div style="height: 35px">
            <asp:Label ID="lblID12" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="#3399FF" Height="25px" Text="Portas" Width="100px"></asp:Label>
            <asp:TextBox ID="txtPortas" runat="server" Height="20px" MaxLength="1" TextMode="Number" Width="100px"></asp:TextBox>
        </div>
        <div style="height: 35px">
            <asp:Label ID="lblID13" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="#3399FF" Height="25px" Text="Placa" Width="100px"></asp:Label>
            <asp:TextBox ID="txtPlaca" runat="server" Height="20px" MaxLength="7" Width="100px"></asp:TextBox>
        </div>
        <div style="height: 35px">
            <asp:Label ID="lblID14" runat="server" Font-Bold="True" Font-Names="Calibri Light" ForeColor="#3399FF" Height="25px" Text="Valor" Width="100px"></asp:Label>
            <asp:TextBox ID="txtValor" runat="server" Height="20px" MaxLength="8" Width="100px"></asp:TextBox>
        </div>
        <p>
            <asp:Button ID="btnGravar" runat="server" Text="Salvar" Width="95px" OnClick="btnGravar_Click" CssClass="botao" />
        </p>

        <!--GRID-->
        <asp:GridView ID="gridVeiculos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1049px" OnSelectedIndexChanged="gridVeiculos_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
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
    </form>
</body>
</html>
