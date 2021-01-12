using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace autocenter
{
    public partial class veiculo : System.Web.UI.Page
    {
        VeiculoBLL objVeiculo = new VeiculoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            CarregarGridView();
        }

        protected void btnGravar_Click(object sender, EventArgs e)
        {
            objVeiculo.Marca = txtMarca.Text;
            objVeiculo.Modelo = txtModelo.Text;
            objVeiculo.Cor = txtCor.Text;            
            objVeiculo.Categoria = listCategoria.SelectedValue.ToString();
            objVeiculo.Ano = int.Parse(txtAno.Text);
            objVeiculo.Motorizacao = txtMotorizacao.Text;
            objVeiculo.Combustivel = listCombustivel.SelectedValue.ToString();
            objVeiculo.Cambio = listCambio.SelectedValue.ToString();            
            objVeiculo.Km = int.Parse(txtKM.Text);
            objVeiculo.Ar = cbAr.Checked ? "Sim" : "Nao";
            objVeiculo.Vidros = cbVidros.Checked ? "Sim" : "Nao";
            objVeiculo.Direcao = cbDirecao.Checked ? "Sim" : "Nao";
            objVeiculo.Portas = int.Parse(txtPortas.Text);
            objVeiculo.Placa = txtPlaca.Text;
            objVeiculo.Valor = Decimal.Parse(txtValor.Text);

            if (txtID.Text.Length > 0)
                objVeiculo.Alterar(txtID.Text);
            else
                objVeiculo.Inserir();

            LimparCampos();
            CarregarGridView();
            txtID.Text = "";
        }

        private void LimparCampos()
        {
            txtMarca.Text = "";
            txtModelo.Text = "";
            txtCor.Text = "";
            listCategoria.SelectedIndex = -1;
            txtAno.Text = "";
            txtMotorizacao.Text = "";
            listCombustivel.SelectedIndex = -1;
            listCambio.SelectedIndex = -1;
            txtKM.Text = "";
            cbAr.Checked = false;
            cbVidros.Checked = false;
            cbDirecao.Checked = false;
            txtPortas.Text = "";
            txtPlaca.Text = "";
            txtValor.Text = "";
        }

        private void CarregarGridView()
        {
            gridVeiculos.DataSource = objVeiculo.RetListaVeiculos();
            gridVeiculos.DataBind();
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            CarregarProduto();
        }

        private void CarregarProduto()
        {
            DataTable data = objVeiculo.CarregarVeiculoPorID(txtID.Text);

            txtMarca.Text = data.Rows[0]["marca"].ToString();
            txtModelo.Text = data.Rows[0]["modelo"].ToString();
            txtCor.Text = data.Rows[0]["cor"].ToString();
            listCategoria.SelectedValue = data.Rows[0]["categoria"].ToString();
            txtAno.Text = data.Rows[0]["ano"].ToString();
            txtMotorizacao.Text = data.Rows[0]["motorizacao"].ToString();
            listCombustivel.SelectedValue = data.Rows[0]["combustivel"].ToString();
            listCambio.SelectedValue = data.Rows[0]["cambio"].ToString();
            txtKM.Text = data.Rows[0]["kilometragem"].ToString();
            cbAr.Checked = data.Rows[0]["ar"].ToString() == "Sim";
            cbVidros.Checked = data.Rows[0]["vidros"].ToString() == "Sim";
            cbDirecao.Checked = data.Rows[0]["direcao"].ToString() == "Sim";
            txtPortas.Text = data.Rows[0]["portas"].ToString();
            txtPlaca.Text = data.Rows[0]["placa"].ToString();
            txtValor.Text = data.Rows[0]["valor"].ToString();
        }

        protected void btnNovo_Click(object sender, EventArgs e)
        {
            txtID.Text = "";
            LimparCampos();

            txtMarca.Focus();
        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            objVeiculo.Excluir(txtID.Text);

            txtID.Text = "";
            LimparCampos();
            CarregarGridView();
        }

        protected void gridVeiculos_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtID.Text = gridVeiculos.SelectedRow.Cells[1].Text;
            CarregarProduto();            
        }
    }
}
