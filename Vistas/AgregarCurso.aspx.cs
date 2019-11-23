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
    public partial class AgregarCurso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAgregarCurso_Click(object sender, EventArgs e)
        {
            try
            {
                Curso cur = new Curso
                {
                    Aula = Convert.ToInt32(TxtAula.Text),
                    Nombre = TxtNombre.Text,

                };
                CursoCN.AgregarCurso(cur);
                LblEstado.Text = "Curso agregado con éxito";
                LblEstado.ForeColor = Color.Green;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", " alert('Curso agregado con exito'); window.location = 'VistaCurso.aspx';", true);
            }
            catch (Exception)
            {

                LblEstado.Text = "Error a agergar curso, por favor verifique los campos";
            }
            
        }
    }
}