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
                Response.Redirect("VistaAlumno.aspx");
            }
            catch (Exception)
            {

                Label1.Text = "No se puede ELiminar un alumno que tenga cursos asignados";
            }
            
           
            
        }
    }
}