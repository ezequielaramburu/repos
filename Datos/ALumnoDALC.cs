﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidad;

namespace Datos
{
    public class ALumnoDALC
    {
        public List<Alumno> GetAlumnos()
        {
            using(TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                return db.Alumnos.ToList();

            }
        }

        public List<Alumno> BuscarAlumnosApellido(string apellido)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                var alumnos = db.Alumnos.Where(x => x.Apellido == apellido).ToList();
               
                return alumnos;

            }
        }

        public Alumno EncontrarAlumno(int id)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                var alumno = db.Alumnos.FirstOrDefault(x => x.Id_Alumno == id);
                return alumno;

            }

        }

        public Alumno EncontrarAlumnoPorDNI(int DNI)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                var alumno = db.Alumnos.FirstOrDefault(x => x.DNI == DNI);
                
                return alumno;

            }

        }

        public Alumno ObtenerUnAlumno(int id)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                return db.Alumnos.Find(id);

            }

        }


        public void AgregarAlumno(Alumno alu)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                db.Alumnos.Add(alu);
                db.SaveChanges();

            }
            
        }

        public void AgregarCursoAlumno(int id, int idcurso)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                var alumno = db.Alumnos.FirstOrDefault(x => x.Id_Alumno == id);
                var curso = db.Cursos.FirstOrDefault(x => x.Id_Curso == idcurso);
                curso.Alumnos.Add(alumno);
                db.SaveChanges();

            }


        }
        public void EliminarCursoAlumno(int id, int idcurso)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                var alumno = db.Alumnos.FirstOrDefault(x => x.Id_Alumno == id);
                var curso = db.Cursos.FirstOrDefault(x => x.Id_Curso == idcurso);
                curso.Alumnos.Remove(alumno);
                db.SaveChanges();

            }


        }


        public void ElimnarAlumno(int id)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                var alumno = db.Alumnos.FirstOrDefault(x => x.Id_Alumno == id);
                db.Alumnos.Remove(alumno);
                db.SaveChanges();

            }

        }

        public void EditarAlumno(Alumno alu)
        {
            using (TrabajoPracticoEntities db = new TrabajoPracticoEntities())
            {
                var alumno = db.Alumnos.FirstOrDefault(x => x.Id_Alumno == alu.Id_Alumno);
                alumno.Nombre = alu.Nombre ;
                alumno.Apellido = alu.Apellido;
                alumno.Direccion = alu.Direccion;
                alumno.DNI = alu.DNI;
                alumno.Fecha_Nac = alu.Fecha_Nac;
                alumno.Matricula = alu.Matricula;
                alumno.Telefono = alu.Telefono;
                alumno.Turno = alu.Turno;
                alumno.Fecha_ingreso = alu.Fecha_ingreso;
                db.SaveChanges();

            }

        }

    }
}
