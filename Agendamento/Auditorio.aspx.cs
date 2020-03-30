using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Agendamento
{
    public partial class Auditorio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnInserir_Click(object sender, EventArgs e)
        {
            try
            {
                if (txbSala.Text != "" && txbPoltrona.Text !="")
                {
                    //captura a string de conexão
                    System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
                    System.Configuration.ConnectionStringSettings connString;
                    connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];

                    //cria um objeto de conexão
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = connString.ToString();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "Insert into auditorio (sala,capacidade) values (@sala,@capacidade)";
                    cmd.Parameters.AddWithValue("sala", txbSala.Text);
                    cmd.Parameters.AddWithValue("capacidade", txbPoltrona.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                }
                else
                {
                    throw new Exception("Campos em branco!!");
                }
            }catch(Exception erro)
            {
                Response.Write("<script> alert(' " + erro.Message + " '); </script>");
            }
        }

      
    }
}