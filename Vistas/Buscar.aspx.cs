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
    public partial class Buscar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ocult.Visible = false;
                LblEstado.Visible = false;


            }

        }

        protected void BtnBuscarDNI_Click(object sender, EventArgs e)
        {
            try
            {
                int dni = Convert.ToInt32(TxtBuscarDNI.Text);
                var alumno = AlumnoCN.EncontrarAlumnoPorDNI(dni);
                if (alumno != null)
                {
                    DateTime ingreso = alumno.Fecha_ingreso.Value;
                    DateTime nacimiento = alumno.Fecha_Nac.Value;

                    Lblnombre.Text = alumno.Nombre;
                    lblApellido.Text = alumno.Apellido;
                    LblDni.Text = alumno.DNI.ToString();
                    LblDireccion.Text = alumno.Direccion;
                    LblMatricula.Text = alumno.Matricula.ToString();
                    LblTel.Text = alumno.Telefono;
                    LblTurno.Text = alumno.Turno;
                    LblIngr.Text = ingreso.ToString("dd/MM/yyyy");
                    LblNac.Text = nacimiento.ToString("dd/MM/yyyy");

                    LblEstado.Text = "";
                    ocult.Visible = true;
                    LblEstado.Visible = false;

                }
                else
                {
                    alumno = AlumnoCN.EncontrarAlumno(dni);
                    DateTime ingreso = alumno.Fecha_ingreso.Value;
                    DateTime nacimiento = alumno.Fecha_Nac.Value;

                    Lblnombre.Text = alumno.Nombre;
                    lblApellido.Text = alumno.Apellido;
                    LblDni.Text = alumno.DNI.ToString();
                    LblDireccion.Text = alumno.Direccion;
                    LblMatricula.Text = alumno.Matricula.ToString();
                    LblTel.Text = alumno.Telefono;
                    LblTurno.Text = alumno.Turno;
                    LblIngr.Text = ingreso.ToString("dd/MM/yyyy");
                    LblNac.Text = nacimiento.ToString("dd/MM/yyyy");

                    LblEstado.Text = "";
                    ocult.Visible = true;
                    LblEstado.Visible = false;

                }
             


            }
            catch (Exception)
            {
                ocult.Visible = false;
                LblEstado.Visible = true;

                LblEstado.Text = "No se pudo encontrar Alumno con DNI o legajo " + TxtBuscarDNI.Text;
            }
            
            
        }
    }
}