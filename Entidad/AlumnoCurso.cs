using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    class AlumnoCurso
    {
        Alumno alumno { get; set; }
        Curso curso { get; set; }

        public AlumnoCurso()
        {

            alumno = new Alumno();
            curso = new Curso();
        }

    }
}
