using System;
using System.Drawing;
using System.Web.UI;
using Entidad;
using Negocio;

namespace Vistas
{
    public partial class EditarAlumno : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id_alu = Convert.ToInt32(Request.Params["id"]);
            if (!Page.IsPostBack)
            CargarAlumno(id_alu);
        }

        private void CargarAlumno(int id)
        {
            var Alumno = AlumnoCN.ObtenerUnAlumno(id);
            if(Alumno!= null)
            {
                TxtNombre.Text = Alumno.Nombre;
                TxtApellido.Text = Alumno.Apellido;
                TxtDni.Text = Alumno.DNI.ToString();
                TxtDireccion.Text = Alumno.Direccion;
                TxtIng.Text = Alumno.Fecha_ingreso.ToString();
                TxtMatricula.Text = Alumno.Matricula.ToString();
                TxtNac.Text = Alumno.Fecha_Nac.ToString();
                TxtTel.Text = Alumno.Telefono;
                DdlTurno.SelectedValue = Alumno.Turno;
            }
            else
            {
                LblEstado.Text = "No se ha encontrado el alumno. Regrese al listado e intente nuevamente.";
                LblEstado.ForeColor = Color.Red;
                form1.Visible = false;
            }
            //DdlTurno.SelectedItem = Alumno.Turno;
        }

        protected void BtnEditarAlumno_Click(object sender, EventArgs e)
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
                    Id_Alumno = Convert.ToInt32(Request.Params["id"])

                };
                AlumnoCN.EditarAlumno(alu);
                LblEstado.Text = "Alumno editado con éxito";
                LblEstado.ForeColor = Color.Green;

            }
            catch (Exception)
            {

                LblEstado.Text = "Error al editar Alumno";
                LblEstado.ForeColor = Color.Red;

            }



        }
    }
}