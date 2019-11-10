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
    public partial class VistaCurso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                ObtenerCursos();
            }
        }
        private void ObtenerCursos()
        {
            List<Curso> cursos = CursoCN.GetCursos();
            GridViewCursos.DataSource = cursos;
            GridViewCursos.DataBind();

        }

        protected void BtnAgregarCurso_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgreGarCurso.aspx");
        }
    }
}