using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidad;

namespace Datos
{
    public class CursoDALC
    {
        public List<Curso> GetCursos()
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                return db.Cursos.ToList();

            }
        }

        public Curso EncontrarCurso(int id)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                var curso = db.Cursos.FirstOrDefault(x => x.Id_Curso == id);
                return curso;

            }

        }

        public Curso ObtenerUnCurso(int id)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                return db.Cursos.Find(id);

            }

        }

        public void AgregarCurso(Curso cur)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                db.Cursos.Add(cur);
                db.SaveChanges();

            }

        }

        public List<Curso> GetCursosByAlumno(int id_alu)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                return db.Cursos.Where(x => x.Alumnos.Any(a => a.Id_Alumno == id_alu)).ToList();

            }

        }

        public void ElimnaCurso(int id)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                var curso = db.Cursos.FirstOrDefault(x => x.Id_Curso == id);
                db.Cursos.Remove(curso);
                db.SaveChanges();

            }

        }
        public void EditarCurso(Curso cur)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                var curso = db.Cursos.FirstOrDefault(x => x.Id_Curso == cur.Id_Curso);
                curso.Nombre = cur.Nombre;
                curso.Aula = cur.Aula;
                
                db.SaveChanges();

            }

        }
    }
}
