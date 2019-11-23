using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidad;
using Negocio;

namespace Vistas
{
    public partial class EliminarCurso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int Id_Curso = Convert.ToInt32(Request.Params["id"]);
        }

        protected void BtnEliminarCurso_Click(object sender, EventArgs e)
        {
            try
            {
                CursoCN.EliminarCurso(Convert.ToInt32(Request.Params["id"]));
                Label1.Text = "Curso Eliminado con exito";
                Response.Redirect("VistaCurso.aspx");

            }
            catch (Exception)
            {

                Label1.Text = "No se puede eliminar un curso que posea Alumnos asignados";
            }

       
            

        }
    }
}