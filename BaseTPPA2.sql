USE [TrabajoPractico]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 11/23/2019 6:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Id_Alumno] [bigint] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
	[Apellido] [varchar](20) NOT NULL,
	[Direccion] [varchar](20) NULL,
	[Matricula] [int] NOT NULL,
	[Telefono] [varchar](20) NULL,
	[Turno] [varchar](20) NULL,
	[Fecha_Nac] [date] NULL,
	[Fecha_ingreso] [date] NULL,
	[DNI] [int] NULL,
 CONSTRAINT [PK_Alumnos] PRIMARY KEY CLUSTERED 
(
	[Id_Alumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [dniUnico] UNIQUE NONCLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alumnos_Cursos]    Script Date: 11/23/2019 6:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos_Cursos](
	[Id_Curso] [int] NOT NULL,
	[ID_Alumno] [bigint] NOT NULL,
 CONSTRAINT [PK_Alumnos_Cursos] PRIMARY KEY CLUSTERED 
(
	[Id_Curso] ASC,
	[ID_Alumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 11/23/2019 6:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[Id_Curso] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Aula] [int] NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[Id_Curso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alumnos_Cursos]  WITH CHECK ADD  CONSTRAINT [FK_Alumnos_Cursos_Alumnos] FOREIGN KEY([ID_Alumno])
REFERENCES [dbo].[Alumnos] ([Id_Alumno])
GO
ALTER TABLE [dbo].[Alumnos_Cursos] CHECK CONSTRAINT [FK_Alumnos_Cursos_Alumnos]
GO
ALTER TABLE [dbo].[Alumnos_Cursos]  WITH CHECK ADD  CONSTRAINT [FK_Alumnos_Cursos_Cursos] FOREIGN KEY([Id_Curso])
REFERENCES [dbo].[Cursos] ([Id_Curso])
GO
ALTER TABLE [dbo].[Alumnos_Cursos] CHECK CONSTRAINT [FK_Alumnos_Cursos_Cursos]
GO
