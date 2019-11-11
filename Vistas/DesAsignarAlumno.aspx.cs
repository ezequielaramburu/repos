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
    public partial class DesAsignarAlumno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

       
        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                int id_curso = Convert.ToInt32(Request.Params["id"]);
                var alumnoId = Convert.ToInt32(Session["Alumno"]);

                AlumnoCN.EliminarCursoAlumno(alumnoId, id_curso);

                Response.Redirect("VistaAlumno.aspx");
            }
            catch (Exception)
            {

                Label1.Text = "Error al borrar";
            }

        }
    }
}