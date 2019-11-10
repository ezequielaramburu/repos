using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidad;
using Negocio;

namespace Vistas
{
    public partial class EditarCurso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id_curso = Convert.ToInt32(Request.Params["id"]);
            if (!Page.IsPostBack)
                CargarAlumno(id_curso);

        }

        private void CargarAlumno(int id_curso)
        {
            var Curso = CursoCN.ObtenerUnCurso(id_curso);
            if (Curso != null)
            { 
                TxtCurso.Text = Curso.Nombre;
                TxtAula.Text = Curso.Aula.ToString();
            }
            else
            {
                LblEstado.Text = "No se ha encontrado el Curso. Regrese al listado e intente nuevamente.";
                LblEstado.ForeColor = Color.Red;
                form1.Visible = false;
            }
        }

        protected void BtnEditarCurso_Click(object sender, EventArgs e)
        {

           try
            { 
                Curso cur = new Curso
                {
                    Aula = Convert.ToInt32(TxtAula.Text),
                    Nombre = TxtCurso.Text,
                    Id_Curso = Convert.ToInt32(Request.Params["id"])
                };
                CursoCN.EditarCurso(cur);
                LblEstado.Text = "Curso editado con éxito";
                LblEstado.ForeColor = Color.Green;
           }
            catch
            {
                LblEstado.Text = "Error al editar curso";
                LblEstado.ForeColor = Color.Red;

            }   



        }
    }
}