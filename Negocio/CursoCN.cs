using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Entidad;

namespace Negocio
{
    public class CursoCN
    {
       public static List<Curso> GetCursos()
        {
            CursoDALC cur = new CursoDALC();
            return cur.GetCursos();
        }

        public static void AgregarCurso(Curso alum)
        {
            CursoDALC alu = new CursoDALC();
            alu.AgregarCurso(alum);

        }

        public static Curso ObtenerUnCurso(int id)
        {
            CursoDALC alu = new CursoDALC();
            return alu.ObtenerUnCurso(id);

        }
        public static void EliminarCurso(int id)
        {
            CursoDALC alu = new CursoDALC();
            alu.ElimnaCurso(id);

        }
        public static Curso EncontrarCurso(int id)
        {
            CursoDALC alu = new CursoDALC();
            return alu.EncontrarCurso(id);

        }

        public static void EditarCurso(Curso alum)
        {
            CursoDALC alu = new CursoDALC();
            alu.EditarCurso(alum);

        }

    }
}
