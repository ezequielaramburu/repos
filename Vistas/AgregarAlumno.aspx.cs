using System;
using System.Drawing;
using Entidad;
using Negocio;

namespace Vistas
{
    public partial class AgregarAlumno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void BtnAgregarAlumno_Click(object sender, EventArgs e)
        {
            try
            {
                Alumno alu = new Alumno
            {
                Nombre = TxtNombre.Text,
                Apellido = TxtApellido.Text,
                DNI = Convert.ToInt32(TxtDni.Text),
                Direccion = TxtDireccion.Text,
                Matricula = Convert.ToInt32(TxtMatricula.Text),
                Telefono = TxtTel.Text,
                Turno = DdlTurno.SelectedValue.ToString(),
                Fecha_ingreso = Convert.ToDateTime(TxtIng.Text),
                Fecha_Nac = Convert.ToDateTime(TxtNac.Text),
                
            };
            AlumnoCN.AgregarAlumno(alu);
            LblEstado.Text = "Alumno agregado con éxito";
            LblEstado.ForeColor= Color.Green;

            }
            catch (Exception)
            {

                LblEstado.Text = "Error al agregar Alumno";
                LblEstado.ForeColor = Color.Red;

            }


        }
    }
}