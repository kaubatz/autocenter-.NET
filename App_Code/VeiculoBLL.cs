using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

namespace autocenter
{
    public class VeiculoBLL
    {
        public string Marca { get; set; }
        public string Modelo { get; set; }
        public string Cor { get; set; }
        public string Categoria { get; set; }
        public int Ano { get; set; }
        public string Motorizacao { get; set; }
        public string Combustivel { get; set; }
        public string Cambio { get; set; }
        public int Km { get; set; }
        public string Ar { get; set; }
        public string Vidros { get; set; }
        public string Direcao { get; set; }
        public int Portas { get; set; }
        public string Placa { get; set; }
        public decimal Valor { get; set; }


        DAL objDAL = new DAL();

        public DataTable RetListaVeiculos()
        {
            return objDAL.RetDataTable("select * from veiculo");
        }

        public DataTable CarregarVeiculoPorID(string id)
        {
            return objDAL.RetDataTable("select * from veiculo where idveiculo = " + id);
        }

        public void Inserir()
        {
            string sql = " insert into veiculo "+
                "(marca,modelo,cor,categoria,ano,motorizacao,combustivel,cambio,kilometragem,ar,vidros,direcao,portas,placa,valor)" +
                " values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}')";

            sql = String.Format(sql, Marca, Modelo, Cor, Categoria, Ano, Motorizacao, Combustivel, Cambio, Km, Ar, Vidros, Direcao, Portas, Placa, Valor);
            objDAL.ExecutarComandoSQL(sql);
        }

        public void Alterar(string id)
        {
            string sql = " update veiculo " +
                " set marca = '{0}', modelo = '{1}', cor = '{2}', categoria = '{3}', ano = '{4}', motorizacao = '{5}', combustivel = '{6}',"+
                " cambio = '{7}', kilometragem = '{8}', ar = '{9}', vidros = '{10}', direcao = '{11}', portas = '{12}', placa = '{13}', valor = '{14}' "+
                " where idveiculo = " + id;

            sql = String.Format(sql, Marca, Modelo, Cor, Categoria, Ano, Motorizacao, Combustivel, Cambio, Km, Ar, Vidros, Direcao, Portas, Placa, Valor);
            objDAL.ExecutarComandoSQL(sql);
        }

        public void Excluir(string id)
        {
            //string sql = " delete from veiculo where idveiculo = " + id;            
            //objDAL.ExecutarComandoSQL(sql);
            
            // refatorado contra sql injection

            string sql = " delete from veiculo where idveiculo = @id";

            MySqlCommand com = new MySqlCommand();

            com.CommandText = sql;
            
            com.Parameters.AddWithValue("@id", id);

            objDAL.ExecutarComandoSQL(com);
        }
    }
}