using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Entidad;

namespace Negocio
{
    public class AlumnoCN
    {
        public static List<Alumno> GetAlumnos()
        {

            ALumnoDALC alu = new ALumnoDALC();
            return alu.GetAlumnos();

        }

        public static  void AgregarCursoAlumno(int id, int idcurso)
        {
            ALumnoDALC alu = new ALumnoDALC();
            alu.AgregarCursoAlumno(id, idcurso);


        }

        public static void EliminarCursoAlumno(int id, int idcurso)
        {
            ALumnoDALC alu = new ALumnoDALC();
            alu.EliminarCursoAlumno(id, idcurso);


        }

        public static void AgregarAlumno(Alumno alum)
        {
            ALumnoDALC alu = new ALumnoDALC();
            alu.AgregarAlumno(alum);

        }

        public static Alumno ObtenerUnAlumno(int id)
        {
            ALumnoDALC alu = new ALumnoDALC();
            return alu.ObtenerUnAlumno(id);

        }

        public static Alumno EncontrarAlumnoPorDNI(int id)
        {
            ALumnoDALC alu = new ALumnoDALC();
            return alu.EncontrarAlumnoPorDNI(id);

        }

        public static void EliminarAlumno(int id)
        {
            ALumnoDALC alu = new ALumnoDALC();
            alu.ElimnarAlumno(id);

        }

        public static Alumno EncontrarAlumno(int id)
        {
            ALumnoDALC alu = new ALumnoDALC();
           return alu.EncontrarAlumno(id);

        }

        public static void EditarAlumno(Alumno alum)
        {
            ALumnoDALC alu = new ALumnoDALC();
            alu.EditarAlumno(alum);

        }

    }
}
