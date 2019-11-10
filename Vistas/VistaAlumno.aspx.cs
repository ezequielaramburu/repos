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
    public partial class VistaAlumno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ObtenerAlumnos();
            }
        }

        private void ObtenerAlumnos()
        {
            List<Alumno> alumnos = AlumnoCN.GetAlumnos();
            GridView1.DataSource = alumnos;
            GridView1.DataBind();
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {



        }

        protected void BtnAgregarAlumno_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarAlumno.aspx");
        }
    }
}