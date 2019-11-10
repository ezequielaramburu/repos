USE [master]
GO
/****** Object:  Database [TrabajoPractico]    Script Date: 10/11/2019 17:28:05 ******/
CREATE DATABASE [TrabajoPractico]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TrabajoPractico', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TrabajoPractico.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TrabajoPractico_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TrabajoPractico_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TrabajoPractico] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TrabajoPractico].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TrabajoPractico] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TrabajoPractico] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TrabajoPractico] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TrabajoPractico] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TrabajoPractico] SET ARITHABORT OFF 
GO
ALTER DATABASE [TrabajoPractico] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TrabajoPractico] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TrabajoPractico] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TrabajoPractico] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TrabajoPractico] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TrabajoPractico] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TrabajoPractico] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TrabajoPractico] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TrabajoPractico] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TrabajoPractico] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TrabajoPractico] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TrabajoPractico] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TrabajoPractico] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TrabajoPractico] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TrabajoPractico] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TrabajoPractico] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TrabajoPractico] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TrabajoPractico] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TrabajoPractico] SET  MULTI_USER 
GO
ALTER DATABASE [TrabajoPractico] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TrabajoPractico] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TrabajoPractico] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TrabajoPractico] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TrabajoPractico] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TrabajoPractico] SET QUERY_STORE = OFF
GO
USE [TrabajoPractico]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 10/11/2019 17:28:05 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alumnos_Cursos]    Script Date: 10/11/2019 17:28:05 ******/
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
/****** Object:  Table [dbo].[Cursos]    Script Date: 10/11/2019 17:28:05 ******/
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
USE [master]
GO
ALTER DATABASE [TrabajoPractico] SET  READ_WRITE 
GO
