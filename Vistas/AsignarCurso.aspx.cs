using System;
using System.Collections.Generic;
using System.Drawing;
using System.Web.UI;
using Entidad;
using Negocio;

namespace Vistas
{
    public partial class AsignarCurso : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id_alu = Convert.ToInt32(Request.Params["id"]);
            if (!Page.IsPostBack) { 
            CargarAlumno(id_alu);
            ObtenerCursos();
            ObtenerCursosPorAlumno(id_alu);
            }
        }

        private void CargarAlumno(int id)
        {
            var Alumno = AlumnoCN.ObtenerUnAlumno(id);
            if(Alumno!= null)
            {

            }
            else
            {
                LblEstado.Text = "No se ha encontrado el alumno. Regrese al listado e intente nuevamente.";
                LblEstado.ForeColor = Color.Red;
                form1.Visible = false;
            }
        }

        protected void BtnAsignarCurso_Click(object sender, EventArgs e)
        {
            try
            {
                var cursoElegido = Convert.ToInt32(DdlCurso.SelectedValue);
                AlumnoCN.AgregarCursoAlumno(Convert.ToInt32(Request.Params["id"]), cursoElegido);
                ObtenerCursosPorAlumno(Convert.ToInt32(Request.Params["id"]));
                LblEstado.Text = "Curso asignado con éxito";
                LblEstado.ForeColor = Color.Green;

            }
            catch (Exception)
            {
                LblEstado.Text = "Error al asignar curso al alumno";
                LblEstado.ForeColor = Color.Red;

            }


        }

        private void ObtenerCursosPorAlumno(int id_alu)
        {
            List<Curso> cursos = CursoCN.GetCursosByAlumno(id_alu);
            GridViewCursos.DataSource = cursos;
            GridViewCursos.DataBind();

        }

        private void ObtenerCursos()
        {
            List<Curso> cursos = CursoCN.GetCursos();
            DdlCurso.DataSource = cursos;
            DdlCurso.DataTextField = "Nombre";
            DdlCurso.DataValueField = "Id_Curso";
            DdlCurso.DataBind();

        }
    }
}