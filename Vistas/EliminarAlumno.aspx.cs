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
    public partial class EliminarAlumno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id_alu = Convert.ToInt32(Request.Params["id"]);
        }

        protected void BtnEliminarAlumno_Click(object sender, EventArgs e)
        {
            try
            {
                AlumnoCN.EliminarAlumno(Convert.ToInt32(Request.Params["id"]));
                Label1.Text = "Alumno Eliminado con exito";
            }
            catch (Exception)
            {

                Label1.Text = "ERROR No se pudo eliminar Alumno";
            }
            
           
            
        }
    }
}