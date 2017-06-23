EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIC_TIPO_CANCHA'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIC_TIPO_CANCHA', @level2type=N'COLUMN',@level2name=N'TIPO_MEDIDA'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIC_TIPO_CANCHA', @level2type=N'COLUMN',@level2name=N'TPS_ID'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RL_TIC_INST'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RL_TIC_INST', @level2type=N'COLUMN',@level2name=N'DESCUENTO_SEGMENTO'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RIN_RESPONSABLE_INSTITUCION', @level2type=N'COLUMN',@level2name=N'TIPO'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CSG_CONFIGURACION_SEGMENTO', @level2type=N'COLUMN',@level2name=N'HORA_TERMINO'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CSG_CONFIGURACION_SEGMENTO', @level2type=N'COLUMN',@level2name=N'HORA_INICIO'

GO
ALTER TABLE [dbo].[TIC_TIPO_CANCHA] DROP CONSTRAINT [fk_TIC_TIPO_CANCHA]
GO
ALTER TABLE [dbo].[SGH_SEGMENTO_HORARIO] DROP CONSTRAINT [fk_SGH_SEGMENTO_HORARIO]
GO
ALTER TABLE [dbo].[RL_TIC_INST] DROP CONSTRAINT [fk_RL_TIC_INST_0]
GO
ALTER TABLE [dbo].[RL_TIC_INST] DROP CONSTRAINT [fk_RL_TIC_INST]
GO
ALTER TABLE [dbo].[RIN_RESPONSABLE_INSTITUCION] DROP CONSTRAINT [fk_RIN_RESPONSABLE_INSTITUCION]
GO
ALTER TABLE [dbo].[RES_RESERVA] DROP CONSTRAINT [fk_RES_RESERVA]
GO
ALTER TABLE [dbo].[per_persona] DROP CONSTRAINT [fk_per_persona]
GO
ALTER TABLE [dbo].[CSG_CONFIGURACION_SEGMENTO] DROP CONSTRAINT [fk_CSG_CONFIGURACION_SEGMENTO]
GO
ALTER TABLE [dbo].[coni_configuracion_institucion] DROP CONSTRAINT [fk_coni_configuracion_institucion]
GO
ALTER TABLE [dbo].[au_autentificacion_usuario] DROP CONSTRAINT [fk_au_autentificacion_usuario]
GO
ALTER TABLE [dbo].[SGH_SEGMENTO_HORARIO] DROP CONSTRAINT [defo_SGH_SEGMENTO_HORARIO_ELIMINADO]
GO
ALTER TABLE [dbo].[SGH_SEGMENTO_HORARIO] DROP CONSTRAINT [defo_SGH_SEGMENTO_HORARIO_ACTIVO]
GO
ALTER TABLE [dbo].[RL_TIC_INST] DROP CONSTRAINT [defo_RL_TIC_INST_DESCUENTO_SEGMENTO]
GO
ALTER TABLE [dbo].[RL_TIC_INST] DROP CONSTRAINT [defo_RL_TIC_INST_ELIMINADO]
GO
ALTER TABLE [dbo].[RIN_RESPONSABLE_INSTITUCION] DROP CONSTRAINT [defo_RIN_RESPONSABLE_INSTITUCION_ELIMINADO]
GO
ALTER TABLE [dbo].[RIN_RESPONSABLE_INSTITUCION] DROP CONSTRAINT [defo_RIN_RESPONSABLE_INSTITUCION_TIPO]
GO
ALTER TABLE [dbo].[RES_RESERVA] DROP CONSTRAINT [defo_RES_RESERVA_ELIMINADO]
GO
ALTER TABLE [dbo].[CSG_CONFIGURACION_SEGMENTO] DROP CONSTRAINT [defo_CSG_CONFIGURACION_SEGMENTO_ELIMINADO]
GO
ALTER TABLE [dbo].[CLIE_CLIENTE] DROP CONSTRAINT [defo_CLIE_CLIENTE_ELIMINADO]
GO
/****** Object:  Table [dbo].[TPS_TIPO_SUPERFICIE]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[TPS_TIPO_SUPERFICIE]
GO
/****** Object:  Table [dbo].[TIC_TIPO_CANCHA]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[TIC_TIPO_CANCHA]
GO
/****** Object:  Table [dbo].[SGH_SEGMENTO_HORARIO]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[SGH_SEGMENTO_HORARIO]
GO
/****** Object:  Table [dbo].[rol_rol]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[rol_rol]
GO
/****** Object:  Table [dbo].[RL_TIC_INST]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[RL_TIC_INST]
GO
/****** Object:  Table [dbo].[RIN_RESPONSABLE_INSTITUCION]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[RIN_RESPONSABLE_INSTITUCION]
GO
/****** Object:  Table [dbo].[RES_RESERVA]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[RES_RESERVA]
GO
/****** Object:  Table [dbo].[reg_region]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[reg_region]
GO
/****** Object:  Table [dbo].[per_persona]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[per_persona]
GO
/****** Object:  Table [dbo].[lgu_login_usuario]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[lgu_login_usuario]
GO
/****** Object:  Table [dbo].[inst_institucion]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[inst_institucion]
GO
/****** Object:  Table [dbo].[CSG_CONFIGURACION_SEGMENTO]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[CSG_CONFIGURACION_SEGMENTO]
GO
/****** Object:  Table [dbo].[coni_configuracion_institucion]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[coni_configuracion_institucion]
GO
/****** Object:  Table [dbo].[com_comuna]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[com_comuna]
GO
/****** Object:  Table [dbo].[CLIE_CLIENTE]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[CLIE_CLIENTE]
GO
/****** Object:  Table [dbo].[au_autentificacion_usuario]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[au_autentificacion_usuario]
GO
/****** Object:  Table [dbo].[arti_articulo]    Script Date: 23-06-2017 17:03:12 ******/
DROP TABLE [dbo].[arti_articulo]
GO
/****** Object:  Table [dbo].[arti_articulo]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[arti_articulo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VISIBLE] [int] NULL,
	[USA_IMAGEN] [int] NULL,
	[URL_IMAGEN] [nvarchar](500) NULL,
	[FECHA] [nvarchar](250) NULL,
	[USA_FECHA] [int] NULL,
	[USA_TITULO] [int] NULL,
	[TITULO] [nvarchar](1000) NULL,
	[CONTENIDO] [nvarchar](max) NULL,
	[INST_ID] [int] NULL,
	[TIPO_ARTICULO] [int] NULL,
	[ELIMINADO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[au_autentificacion_usuario]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[au_autentificacion_usuario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE_USUARIO] [nvarchar](250) NULL,
	[PASSWORD] [nvarchar](250) NULL,
	[CORREO_ELECTRONICO] [nvarchar](250) NULL,
	[ROL_ID] [int] NULL,
	[ES_VIGENTE] [int] NULL,
	[INST_ID] [int] NULL,
	[ELIMINADO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CLIE_CLIENTE]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLIE_CLIENTE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RUT] [varchar](20) NULL,
	[NOMBRES] [varchar](250) NULL,
	[APELLIDO_PATERNO] [varchar](250) NULL,
	[APELLIDO_MATERNO] [varchar](250) NULL,
	[CODIGO] [varchar](250) NULL,
	[REG_ID] [int] NULL,
	[COM_ID] [int] NULL,
	[TELEFONO] [varchar](250) NULL,
	[EMAIL] [varchar](250) NULL,
	[ELIMINADO] [int] NULL,
 CONSTRAINT [Pk_CLIE_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[com_comuna]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[com_comuna](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PROV_ID] [int] NULL,
	[NOMBRE] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[coni_configuracion_institucion]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[coni_configuracion_institucion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[INST_ID] [int] NULL,
	[URL_FACEBOOK] [varchar](500) NULL,
	[URL_SITIO] [varchar](500) NULL,
	[URL_TWITTER] [varchar](500) NULL,
	[URL_INSTAGRAM] [varchar](500) NULL,
	[ELIMINADO] [int] NULL,
	[URL_UBICACION] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CSG_CONFIGURACION_SEGMENTO]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CSG_CONFIGURACION_SEGMENTO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[INST_ID] [int] NULL,
	[TIEMPO_SEGMENTO] [int] NULL,
	[NOMBRE] [varchar](250) NULL,
	[HORA_INICIO] [varchar](5) NULL,
	[HORA_TERMINO] [varchar](5) NULL,
	[ELIMINADO] [int] NULL,
 CONSTRAINT [Pk_CSG_CONFIGURACION_SEGMENTO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[inst_institucion]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[inst_institucion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [nvarchar](500) NULL,
	[REG_ID] [int] NULL,
	[COM_ID] [int] NULL,
	[ELIMINADO] [int] NULL,
	[TELEFONO] [varchar](50) NULL DEFAULT (''),
	[CORREO_ELECTRONICO] [varchar](200) NULL DEFAULT (''),
	[DIRECCION] [varchar](250) NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lgu_login_usuario]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lgu_login_usuario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[USU_ID] [int] NULL,
	[FECHA_MOVIMIENTO] [datetime2](7) NULL,
	[TIPO_MOVIMIENTO] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[per_persona]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[per_persona](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RUT] [nvarchar](50) NULL,
	[NOMBRES] [nvarchar](250) NULL,
	[APELLIDO_PATERNO] [nvarchar](250) NULL,
	[APELLIDO_MATERNO] [nvarchar](250) NULL,
	[PAIS_ID] [int] NULL,
	[REG_ID] [int] NULL,
	[COM_ID] [int] NULL,
	[DIRECCION_COMPLETA] [nvarchar](500) NULL,
	[INST_ID] [int] NULL,
	[USU_ID] [int] NULL,
	[TELEFONOS] [nvarchar](250) NULL,
	[ELIMINADO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[reg_region]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reg_region](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [nvarchar](60) NULL,
	[ROMANO] [nvarchar](5) NULL,
	[NUMERO_PROVINCIAS] [int] NULL,
	[NUMERO_COMUNAS] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RES_RESERVA]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RES_RESERVA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CLIE_ID] [int] NULL,
	[INST_ID] [int] NULL,
	[CODIGO_CLIENTE] [varchar](250) NULL,
	[FECHA_RESERVA] [datetime] NULL,
	[FECHA_HORA_INICIO] [datetime] NULL,
	[FECHA_HORA_TERMINO] [datetime] NULL,
	[SGH_ID] [int] NULL,
	[TOTAL] [int] NULL,
	[DESCUENTO] [int] NULL,
	[ELIMINADO] [int] NULL,
 CONSTRAINT [Pk_RES_RESERVA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RIN_RESPONSABLE_INSTITUCION]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RIN_RESPONSABLE_INSTITUCION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[INST_ID] [int] NULL,
	[NOMBRE] [varchar](250) NULL,
	[APELLIDO_PATERNO] [varchar](250) NULL,
	[APELLIDO_MATERNO] [varchar](250) NULL,
	[CELULAR] [varchar](250) NULL,
	[CORREO] [varchar](250) NULL,
	[TIPO] [int] NULL,
	[ELIMINADO] [int] NULL,
 CONSTRAINT [Pk_PRI_PARAMETRO_INSTITUCION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RL_TIC_INST]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RL_TIC_INST](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TIC_ID] [int] NULL,
	[INST_ID] [int] NULL,
	[FOTO_UNO] [varchar](250) NULL,
	[FOTO_DOS] [varchar](250) NULL,
	[FOTO_TRES] [varchar](250) NULL,
	[ELIMINADO] [int] NULL,
	[VALOR_SEGMENTO] [int] NULL,
	[DESCUENTO_SEGMENTO] [int] NULL,
	[DISCIPLINA] [varchar](250) NULL,
 CONSTRAINT [Pk_RL_TIC_INST] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rol_rol]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol_rol](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [nvarchar](250) NULL,
	[DESCRIPCION] [nvarchar](500) NULL,
	[ELIMINADO] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SGH_SEGMENTO_HORARIO]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SGH_SEGMENTO_HORARIO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[INST_ID] [int] NULL,
	[DURACION] [int] NULL,
	[FECHA_HORA_INICIO] [datetime] NULL,
	[FECHA_HORA_TERMINO] [datetime] NULL,
	[ACTIVO] [int] NULL,
	[ELIMINADO] [int] NULL,
 CONSTRAINT [Pk_SGH_SEGMENTO_HORARIO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TIC_TIPO_CANCHA]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIC_TIPO_CANCHA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](250) NULL,
	[TPS_ID] [int] NULL CONSTRAINT [defo_TIC_TIPO_CANCHA_TIS_ID]  DEFAULT ((1)),
	[LARGO] [int] NULL CONSTRAINT [defo_TIC_TIPO_CANCHA_LARGO]  DEFAULT ((0)),
	[ANCHO] [int] NULL CONSTRAINT [defo_TIC_TIPO_CANCHA_ANCHO]  DEFAULT ((0)),
	[TIPO_MEDIDA] [int] NULL,
	[ELIMINADO] [int] NULL,
	[CANTIDAD_JUGADORES] [int] NULL CONSTRAINT [defo_TIC_TIPO_CANCHA_CANTIDAD_JUGADORES]  DEFAULT ((0)),
	[INST_ID] [int] NULL,
 CONSTRAINT [Pk_TIC_TIPO_CANCHA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TPS_TIPO_SUPERFICIE]    Script Date: 23-06-2017 17:03:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TPS_TIPO_SUPERFICIE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](250) NULL,
	[ELIMINADO] [int] NULL,
 CONSTRAINT [Pk_TPS_TIPO_SUPERFICIE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[arti_articulo] ON 

GO
INSERT [dbo].[arti_articulo] ([ID], [VISIBLE], [USA_IMAGEN], [URL_IMAGEN], [FECHA], [USA_FECHA], [USA_TITULO], [TITULO], [CONTENIDO], [INST_ID], [TIPO_ARTICULO], [ELIMINADO]) VALUES (1, 0, 1, N'../img/imgArticulo_1.png', N'14-12-2015', 0, 1, N'¿QUIENES SOMOS?', N'Una plataforma de gestión para los centros de padres y apoderados de cualquier tipo de instituciones o establecimiento. 
El foco fundamental esta centrado en la gestión de las actividades del centro de padres y la trasnparencia de los estados de cuentas y flujos economicos producto de la gestion del centro de padres y apoderados. ', 3, 1, 0)
GO
INSERT [dbo].[arti_articulo] ([ID], [VISIBLE], [USA_IMAGEN], [URL_IMAGEN], [FECHA], [USA_FECHA], [USA_TITULO], [TITULO], [CONTENIDO], [INST_ID], [TIPO_ARTICULO], [ELIMINADO]) VALUES (2, 0, 1, N'../img/imgArticulo_2.png', N'14-12-2015', 0, 1, N'NUESTRA VISIÓN', N'Ser la mejor mejor herramienta de gestion y transparencia para los centros de padres y apoderados asi también un mecanismo moderno de interacción educativa entre los establecimientos y la comunidad estudiantil. ', 3, 1, 0)
GO
INSERT [dbo].[arti_articulo] ([ID], [VISIBLE], [USA_IMAGEN], [URL_IMAGEN], [FECHA], [USA_FECHA], [USA_TITULO], [TITULO], [CONTENIDO], [INST_ID], [TIPO_ARTICULO], [ELIMINADO]) VALUES (3, 0, 1, N'../img/imgArticulo_3.png', N'14-12-2015', 0, 1, N'NUESTROS SERVICIOS', N'Nuestro servico consta de perfiles y roles de acuerdo a la orgánica de administración de los centros de padres y apoderados así como también un canal directo de transparencia e información al apoderado y el establecimiento.', 3, 1, 0)
GO
INSERT [dbo].[arti_articulo] ([ID], [VISIBLE], [USA_IMAGEN], [URL_IMAGEN], [FECHA], [USA_FECHA], [USA_TITULO], [TITULO], [CONTENIDO], [INST_ID], [TIPO_ARTICULO], [ELIMINADO]) VALUES (4, 0, 1, N'../img/imgArticulo_4.png', N'14-12-2015', 0, 1, N'NUESTRO COLEGIO', N'El Colegio Santa Elena fue fundado el año 1913 por las Hermanas Carmelitas de la Caridad. Estos 100 años de existencia nos avalan como una institución que ha estado permanentemente preocupada por la educación de niñas y jóvenes, formando mujeres líderes de nuestra sociedad, lo que hoy significa seguir aspirando a que ellas logren la excelencia humana, mediante el desarrollo de sus habilidades y capacidades personales.', 4, 1, 0)
GO
INSERT [dbo].[arti_articulo] ([ID], [VISIBLE], [USA_IMAGEN], [URL_IMAGEN], [FECHA], [USA_FECHA], [USA_TITULO], [TITULO], [CONTENIDO], [INST_ID], [TIPO_ARTICULO], [ELIMINADO]) VALUES (5, 0, 1, N'../img/imgArticulo_5.png', N'14-12-2015', 0, 1, N'CENTRO DE PADRES', N'El Centro de Padres y Apoderados del Colegio (CPA) nace el año 2003, producto de la fusión de los Centros de Padres y Apoderados de las distintas sedes.', 4, 1, 0)
GO
INSERT [dbo].[arti_articulo] ([ID], [VISIBLE], [USA_IMAGEN], [URL_IMAGEN], [FECHA], [USA_FECHA], [USA_TITULO], [TITULO], [CONTENIDO], [INST_ID], [TIPO_ARTICULO], [ELIMINADO]) VALUES (6, 0, 1, N'../img/imgArticulo_6.png', N'14-12-2015', 0, 1, N'MISIÓN', N'Nuestra misión es formar mujeres líderes, comprometidas con los valores del Evangelio, con un profundo sentimiento de gratitud y amor por la vida, que aspiren a la excelencia humana, mediante el desarrollo de las habilidades y capacidades personales. Ésta se promueve en un estilo de vida comunitario, favorecido por un clima afectivo-familiar.', 4, 1, 0)
GO
INSERT [dbo].[arti_articulo] ([ID], [VISIBLE], [USA_IMAGEN], [URL_IMAGEN], [FECHA], [USA_FECHA], [USA_TITULO], [TITULO], [CONTENIDO], [INST_ID], [TIPO_ARTICULO], [ELIMINADO]) VALUES (7, 0, 1, N'../img/imgArticulo_4.png', N'14-12-2015', 0, 1, N'NUESTRO COLEGIO', N'El Colegio Santa Elena fue fundado el año 1913 por las Hermanas Carmelitas de la Caridad. Estos 100 años de existencia nos avalan como una institución que ha estado permanentemente preocupada por la educación de niñas y jóvenes, formando mujeres líderes de nuestra sociedad, lo que hoy significa seguir aspirando a que ellas logren la excelencia humana, mediante el desarrollo de sus habilidades y capacidades personales.', 5, 1, 0)
GO
INSERT [dbo].[arti_articulo] ([ID], [VISIBLE], [USA_IMAGEN], [URL_IMAGEN], [FECHA], [USA_FECHA], [USA_TITULO], [TITULO], [CONTENIDO], [INST_ID], [TIPO_ARTICULO], [ELIMINADO]) VALUES (8, 0, 1, N'../img/imgArticulo_5.png', N'14-12-2015', 0, 1, N'CENTRO DE PADRES', N'El Centro de Padres y Apoderados del Colegio (CPA) nace el año 2003, producto de la fusión de los Centros de Padres y Apoderados de las distintas sedes.', 5, 1, 0)
GO
INSERT [dbo].[arti_articulo] ([ID], [VISIBLE], [USA_IMAGEN], [URL_IMAGEN], [FECHA], [USA_FECHA], [USA_TITULO], [TITULO], [CONTENIDO], [INST_ID], [TIPO_ARTICULO], [ELIMINADO]) VALUES (9, 0, 1, N'../img/imgArticulo_6.png', N'14-12-2015', 0, 1, N'MISIÓN', N'Nuestra misión es formar mujeres líderes, comprometidas con los valores del Evangelio, con un profundo sentimiento de gratitud y amor por la vida, que aspiren a la excelencia humana, mediante el desarrollo de las habilidades y capacidades personales. Ésta se promueve en un estilo de vida comunitario, favorecido por un clima afectivo-familiar.', 5, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[arti_articulo] OFF
GO
SET IDENTITY_INSERT [dbo].[au_autentificacion_usuario] ON 

GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (1, N'vcoronado', N'MQAyADMANAA1ADYA', N'vcoronado.alarcon@gmail.com', 1, 1, 3, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (4, N'Vgarcia', N'MQAyADMANAA1ADYA', N'turck182@gmail.com', 5, 1, 3, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (6, N'vgarciaadm', N'MQAyADMANAA1ADYA', N'vgarcia@saydex.cl', 2, 1, 4, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (7, N'vgarcia1', N'MQAyADMANAA1ADYA', N'vgarcia@saydex.cl', 3, 1, 4, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (8, N'vgarcia2', N'MQAyADMANAA1ADYA', N'vgarcia@saydex.cl', 4, 1, 4, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (9, N'vgarcia3', N'MQAyADMANAA1ADYA', N'vgarcia@saydex.cl', 5, 1, 4, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (10, N'vgarcia4', N'MQAyADMANAA1ADYA', N'vgarcia@saydex.cl', 9, 1, 4, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (11, N'vgarcia5', N'MQAyADMANAA1ADYA', N'vgarcia@saydex.cl', 9, 1, 4, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (12, N'vgarcia6', N'MQAyADMANAA1ADYA', N'vgarcia@saydex.com', 9, 1, 4, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (13, N'ppprueba', N'MQAyADMANAA1ADYA', N'vcoronado@saydex.cl', 9, 1, 3, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (14, N'iretamalesPrueba', N'MQAyADEAOQAzADAAMQA0ADUA', N'vcoronado.alarcon@gmail.com', 9, 1, 3, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (15, N'otroPrueba', N'MQAwADQANQAyADYAOQAxADgA', N'vcoronado@saydex.cl', 9, 1, 3, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (16, N'ppablo', N'MQAwADQANQAyADYAOQAxADgA', N'vcoronado@saydex.cl', 9, 1, 3, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (17, N'iretamales', N'MQAyADEAOQAzADAAMQA0ADUA', N'vcoronado.alarcon@gmail.com', 9, 1, 3, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (18, N'vgarciasuper', N'MQAyADMANAA1ADYA', N'vgarcia@saydex.cl', 1, 1, 5, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (19, N'dsalazar', N'MQAzADUAOQA3ADQAMwA0AGsA', N'danny_salazaro@hotmail.com', 9, 1, 4, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (20, N'vigarci', N'MQAxADEAMQAxADEAMQAxADEA', N'turck182@gmail.com', 9, 1, 4, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (21, N'SecretariaCGPA', N'MQAyADMANAA1ADYA', N'danny_salaro@hotmail.com', 5, 1, 4, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (22, N'mabarca', N'OQAxADYANgAyADEAMwAyAA==', N'abarcamiguel63@gmail.com', 3, 1, 5, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (23, N'mquiroga', N'MQAyADIAMwA5ADIANAA0ADkA', N'marcia_quiroga_m@hotmail.com', 4, 1, 5, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (31, N'prueba', N'MQAyADMANAA1ADYA', N'vcoronado@saydex.cl', 9, 1, 5, 0)
GO
INSERT [dbo].[au_autentificacion_usuario] ([ID], [NOMBRE_USUARIO], [PASSWORD], [CORREO_ELECTRONICO], [ROL_ID], [ES_VIGENTE], [INST_ID], [ELIMINADO]) VALUES (32, N'vgarcia182', N'MQAyADMANAA1ADYA', N'vmgarcia1@uc.cl', 10, 1, 4, 0)
GO
SET IDENTITY_INSERT [dbo].[au_autentificacion_usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[com_comuna] ON 

GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (1, 1, N'ARICA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (2, 1, N'CAMARONES')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (3, 2, N'PUTRE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (4, 2, N'GENERAL LAGOS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (5, 3, N'IQUIQUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (6, 3, N'ALTO HOSPICIO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (7, 4, N'POZO ALMONTE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (8, 4, N'CAMIÑA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (9, 4, N'COLCHANE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (10, 4, N'HUARA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (11, 4, N'PICA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (12, 5, N'ANTOFAGASTA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (13, 5, N'MEJILLONES')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (14, 5, N'SIERRA GORDA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (15, 5, N'TALTAL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (16, 6, N'CALAMA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (17, 6, N'OLLAGÜE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (18, 6, N'SAN PEDRO DE ATACAMA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (19, 7, N'TOCOPILLA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (20, 7, N'MARÍA ELENA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (21, 8, N'COPIAPÓ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (22, 8, N'CALDERA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (23, 8, N'TIERRA AMARILLA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (24, 9, N'CHAÑARAL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (25, 9, N'DIEGO DE ALMAGRO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (26, 10, N'VALLENAR')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (27, 10, N'ALTO DEL CARMEN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (28, 10, N'FREIRINA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (29, 10, N'HUASCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (30, 11, N'LA SERENA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (31, 11, N'COQUIMBO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (32, 11, N'ANDACOLLO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (33, 11, N'LA HIGUERA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (34, 11, N'PAIGUANO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (35, 11, N'VICUÑA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (36, 12, N'ILLAPEL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (37, 12, N'CANELA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (38, 12, N'LOS VILOS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (39, 12, N'SALAMANCA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (40, 13, N'OVALLE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (41, 13, N'COMBARBALÁ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (42, 13, N'MONTE PATRIA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (43, 13, N'PUNITAQUI')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (44, 13, N'RÍO HURTADO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (45, 14, N'VALPARAÍSO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (46, 14, N'CASABLANCA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (47, 14, N'CONCÓN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (48, 14, N'JUAN FERNÁNDEZ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (49, 14, N'PUCHUNCAVÍ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (50, 14, N'QUINTERO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (51, 14, N'VIÑA DEL MAR')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (52, 15, N'ISLA DE PASCUA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (53, 16, N'LOS ANDES')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (54, 16, N'CALLE LARGA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (55, 16, N'RINCONADA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (56, 16, N'SAN ESTEBAN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (57, 17, N'LA LIGUA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (58, 17, N'CABILDO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (59, 17, N'PAPUDO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (60, 17, N'PETORCA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (61, 17, N'ZAPALLAR')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (62, 18, N'QUILLOTA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (63, 18, N'CALERA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (64, 18, N'HIJUELAS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (65, 18, N'LA CRUZ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (66, 18, N'NOGALES')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (67, 19, N'SAN ANTONIO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (68, 19, N'ALGARROBO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (69, 19, N'CARTAGENA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (70, 19, N'EL QUISCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (71, 19, N'EL TABO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (72, 19, N'SANTO DOMINGO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (73, 20, N'SAN FELIPE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (74, 20, N'CATEMU')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (75, 20, N'LLAILLAY')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (76, 20, N'PANQUEHUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (77, 20, N'PUTAENDO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (78, 20, N'SANTA MARÍA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (79, 21, N'LIMACHE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (80, 21, N'QUILPUÉ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (81, 21, N'VILLA ALEMANA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (82, 21, N'OLMUÉ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (83, 22, N'RANCAGUA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (84, 22, N'CODEGUA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (85, 22, N'COINCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (86, 22, N'COLTAUCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (87, 22, N'DOÑIHUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (88, 22, N'GRANEROS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (89, 22, N'LAS CABRAS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (90, 22, N'MACHALÍ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (91, 22, N'MALLOA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (92, 22, N'MOSTAZAL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (93, 22, N'OLIVAR')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (94, 22, N'PEUMO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (95, 22, N'PICHIDEGUA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (96, 22, N'QUINTA DE TILCOCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (97, 22, N'RENGO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (98, 22, N'REQUÍNOA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (99, 22, N'SAN VICENTE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (100, 23, N'PICHILEMU')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (101, 23, N'LA ESTRELLA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (102, 23, N'LITUECHE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (103, 23, N'MARCHIHUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (104, 23, N'NAVIDAD')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (105, 23, N'PAREDONES')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (106, 24, N'SAN FERNANDO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (107, 24, N'CHÉPICA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (108, 24, N'CHIMBARONGO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (109, 24, N'LOLOL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (110, 24, N'NANCAGUA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (111, 24, N'PALMILLA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (112, 24, N'PERALILLO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (113, 24, N'PLACILLA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (114, 24, N'PUMANQUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (115, 24, N'SANTA CRUZ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (116, 25, N'TALCA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (117, 25, N'CONSTITUCIÓN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (118, 25, N'CUREPTO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (119, 25, N'EMPEDRADO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (120, 25, N'MAULE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (121, 25, N'PELARCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (122, 25, N'PENCAHUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (123, 25, N'RÍO CLARO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (124, 25, N'SAN CLEMENTE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (125, 25, N'SAN RAFAEL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (126, 26, N'CAUQUENES')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (127, 26, N'CHANCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (128, 26, N'PELLUHUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (129, 27, N'CURICÓ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (130, 27, N'HUALAÑÉ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (131, 27, N'LICANTÉN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (132, 27, N'MOLINA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (133, 27, N'RAUCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (134, 27, N'ROMERAL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (135, 27, N'SAGRADA FAMILIA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (136, 27, N'TENO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (137, 27, N'VICHUQUÉN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (138, 28, N'LINARES')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (139, 28, N'COLBÚN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (140, 28, N'LONGAVÍ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (141, 28, N'PARRAL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (142, 28, N'RETIRO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (143, 28, N'SAN JAVIER')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (144, 28, N'VILLA ALEGRE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (145, 28, N'YERBAS BUENAS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (146, 29, N'CONCEPCIÓN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (147, 29, N'CORONEL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (148, 29, N'CHIGUAYANTE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (149, 29, N'FLORIDA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (150, 29, N'HUALQUI')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (151, 29, N'LOTA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (152, 29, N'PENCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (153, 29, N'SAN PEDRO DE LA PAZ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (154, 29, N'SANTA JUANA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (155, 29, N'TALCAHUANO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (156, 29, N'TOMÉ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (157, 29, N'HUALPÉN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (158, 30, N'LEBU')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (159, 30, N'ARAUCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (160, 30, N'CAÑETE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (161, 30, N'CONTULMO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (162, 30, N'CURANILAHUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (163, 30, N'LOS ALAMOS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (164, 30, N'TIRÚA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (165, 31, N'LOS ANGELES')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (166, 31, N'ANTUCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (167, 31, N'CABRERO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (168, 31, N'LAJA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (169, 31, N'MULCHÉN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (170, 31, N'NACIMIENTO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (171, 31, N'NEGRETE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (172, 31, N'QUILACO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (173, 31, N'QUILLECO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (174, 31, N'SAN ROSENDO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (175, 31, N'SANTA BÁRBARA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (176, 31, N'TUCAPEL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (177, 31, N'YUMBEL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (178, 31, N'ALTO BIOBÍO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (179, 32, N'CHILLÁN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (180, 32, N'BULNES')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (181, 32, N'COBQUECURA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (182, 32, N'COELEMU')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (183, 32, N'COIHUECO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (184, 32, N'CHILLÁN VIEJO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (185, 32, N'EL CARMEN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (186, 32, N'NINHUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (187, 32, N'ÑIQUÉN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (188, 32, N'PEMUCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (189, 32, N'PINTO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (190, 32, N'PORTEZUELO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (191, 32, N'QUILLÓN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (192, 32, N'QUIRIHUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (193, 32, N'RÁNQUIL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (194, 32, N'SAN CARLOS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (195, 32, N'SAN FABIÁN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (196, 32, N'SAN IGNACIO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (197, 32, N'SAN NICOLÁS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (198, 32, N'TREGUACO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (199, 32, N'YUNGAY')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (200, 33, N'TEMUCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (201, 33, N'CARAHUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (202, 33, N'CUNCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (203, 33, N'CURARREHUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (204, 33, N'FREIRE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (205, 33, N'GALVARINO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (206, 33, N'GORBEA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (207, 33, N'LAUTARO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (208, 33, N'LONCOCHE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (209, 33, N'MELIPEUCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (210, 33, N'NUEVA IMPERIAL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (211, 33, N'PADRE LAS CASAS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (212, 33, N'PERQUENCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (213, 33, N'PITRUFQUÉN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (214, 33, N'PUCÓN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (215, 33, N'SAAVEDRA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (216, 33, N'TEODORO SCHMIDT')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (217, 33, N'TOLTÉN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (218, 33, N'VILCÚN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (219, 33, N'VILLARRICA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (220, 33, N'CHOLCHOL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (221, 34, N'ANGOL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (222, 34, N'COLLIPULLI')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (223, 34, N'CURACAUTÍN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (224, 34, N'ERCILLA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (225, 34, N'LONQUIMAY')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (226, 34, N'LOS SAUCES')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (227, 34, N'LUMACO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (228, 34, N'PURÉN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (229, 34, N'RENAICO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (230, 34, N'TRAIGUÉN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (231, 34, N'VICTORIA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (232, 35, N'VALDIVIA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (233, 35, N'CORRAL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (234, 35, N'LANCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (235, 35, N'LOS LAGOS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (236, 35, N'MÁFIL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (237, 35, N'MARIQUINA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (238, 35, N'PAILLACO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (239, 35, N'PANGUIPULLI')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (240, 36, N'LA UNIÓN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (241, 36, N'FUTRONO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (242, 36, N'LAGO RANCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (243, 36, N'RÍO BUENO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (244, 37, N'PUERTO MONTT')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (245, 37, N'CALBUCO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (246, 37, N'COCHAMÓ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (247, 37, N'FRESIA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (248, 37, N'FRUTILLAR')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (249, 37, N'LOS MUERMOS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (250, 37, N'LLANQUIHUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (251, 37, N'MAULLÍN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (252, 37, N'PUERTO VARAS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (253, 38, N'CASTRO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (254, 38, N'ANCUD')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (255, 38, N'CHONCHI')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (256, 38, N'CURACO DE VÉLEZ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (257, 38, N'DALCAHUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (258, 38, N'PUQUELDÓN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (259, 38, N'QUEILÉN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (260, 38, N'QUELLÓN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (261, 38, N'QUEMCHI')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (262, 38, N'QUINCHAO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (263, 39, N'OSORNO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (264, 39, N'PUERTO OCTAY')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (265, 39, N'PURRANQUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (266, 39, N'PUYEHUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (267, 39, N'RÍO NEGRO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (268, 39, N'SAN JUAN DE LA COSTA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (269, 39, N'SAN PABLO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (270, 40, N'CHAITÉN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (271, 40, N'FUTALEUFÚ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (272, 40, N'HUALAIHUÉ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (273, 40, N'PALENA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (274, 41, N'COIHAIQUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (275, 41, N'LAGO VERDE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (276, 42, N'AISÉN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (277, 42, N'CISNES')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (278, 42, N'GUAITECAS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (279, 43, N'COCHRANE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (280, 43, N'O''HIGGINS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (281, 43, N'TORTEL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (282, 44, N'CHILE CHICO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (283, 44, N'RÍO IBÁÑEZ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (284, 45, N'PUNTA ARENAS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (285, 45, N'LAGUNA BLANCA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (286, 45, N'RÍO VERDE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (287, 45, N'SAN GREGORIO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (288, 46, N'CABO DE HORNOS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (289, 46, N'ANTÁRTICA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (290, 47, N'PORVENIR')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (291, 47, N'PRIMAVERA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (292, 47, N'TIMAUKEL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (293, 48, N'NATALES')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (294, 48, N'TORRES DEL PAINE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (295, 49, N'SANTIAGO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (296, 49, N'CERRILLOS')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (297, 49, N'CERRO NAVIA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (298, 49, N'CONCHALÍ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (299, 49, N'EL BOSQUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (300, 49, N'ESTACIÓN CENTRAL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (301, 49, N'HUECHURABA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (302, 49, N'INDEPENDENCIA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (303, 49, N'LA CISTERNA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (304, 49, N'LA FLORIDA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (305, 49, N'LA GRANJA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (306, 49, N'LA PINTANA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (307, 49, N'LA REINA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (308, 49, N'LAS CONDES')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (309, 49, N'LO BARNECHEA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (310, 49, N'LO ESPEJO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (311, 49, N'LO PRADO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (312, 49, N'MACUL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (313, 49, N'MAIPÚ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (314, 49, N'ÑUÑOA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (315, 49, N'PEDRO AGUIRRE CERDA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (316, 49, N'PEÑALOLÉN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (317, 49, N'PROVIDENCIA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (318, 49, N'PUDAHUEL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (319, 49, N'QUILICURA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (320, 49, N'QUINTA NORMAL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (321, 49, N'RECOLETA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (322, 49, N'RENCA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (323, 49, N'SAN JOAQUÍN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (324, 49, N'SAN MIGUEL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (325, 49, N'SAN RAMÓN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (326, 49, N'VITACURA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (327, 50, N'PUENTE ALTO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (328, 50, N'PIRQUE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (329, 50, N'SAN JOSÉ DE MAIPO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (330, 51, N'COLINA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (331, 51, N'LAMPA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (332, 51, N'TILTIL')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (333, 52, N'SAN BERNARDO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (334, 52, N'BUIN')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (335, 52, N'CALERA DE TANGO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (336, 52, N'PAINE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (337, 53, N'MELIPILLA')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (338, 53, N'ALHUÉ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (339, 53, N'CURACAVÍ')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (340, 53, N'MARÍA PINTO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (341, 53, N'SAN PEDRO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (342, 54, N'TALAGANTE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (343, 54, N'EL MONTE')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (344, 54, N'ISLA DE MAIPO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (345, 54, N'PADRE HURTADO')
GO
INSERT [dbo].[com_comuna] ([ID], [PROV_ID], [NOMBRE]) VALUES (346, 54, N'PEÑAFLOR')
GO
SET IDENTITY_INSERT [dbo].[com_comuna] OFF
GO
SET IDENTITY_INSERT [dbo].[coni_configuracion_institucion] ON 

GO
INSERT [dbo].[coni_configuracion_institucion] ([ID], [INST_ID], [URL_FACEBOOK], [URL_SITIO], [URL_TWITTER], [URL_INSTAGRAM], [ELIMINADO], [URL_UBICACION]) VALUES (1, 3, N' ', N' ', N' ', N' ', 0, N' ')
GO
INSERT [dbo].[coni_configuracion_institucion] ([ID], [INST_ID], [URL_FACEBOOK], [URL_SITIO], [URL_TWITTER], [URL_INSTAGRAM], [ELIMINADO], [URL_UBICACION]) VALUES (2, 4, N' ', N' ', N' ', N' ', 0, N' ')
GO
INSERT [dbo].[coni_configuracion_institucion] ([ID], [INST_ID], [URL_FACEBOOK], [URL_SITIO], [URL_TWITTER], [URL_INSTAGRAM], [ELIMINADO], [URL_UBICACION]) VALUES (3, 5, N' ', N' ', N' ', N' ', 0, N' ')
GO
SET IDENTITY_INSERT [dbo].[coni_configuracion_institucion] OFF
GO
SET IDENTITY_INSERT [dbo].[inst_institucion] ON 

GO
INSERT [dbo].[inst_institucion] ([ID], [NOMBRE], [REG_ID], [COM_ID], [ELIMINADO], [TELEFONO], [CORREO_ELECTRONICO], [DIRECCION]) VALUES (3, N'Prueba Cpas', 15, 295, 0, N'985006988', N'vcoronado@saydex.cl', N'prueba de direccion')
GO
INSERT [dbo].[inst_institucion] ([ID], [NOMBRE], [REG_ID], [COM_ID], [ELIMINADO], [TELEFONO], [CORREO_ELECTRONICO], [DIRECCION]) VALUES (4, N'Colegio de Prueba', 15, 295, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[inst_institucion] ([ID], [NOMBRE], [REG_ID], [COM_ID], [ELIMINADO], [TELEFONO], [CORREO_ELECTRONICO], [DIRECCION]) VALUES (5, N'Colegio Santa Elena', 15, 295, 0, N'985006988', N'vcoronado@gmail.com', N'prueba de direccion')
GO
SET IDENTITY_INSERT [dbo].[inst_institucion] OFF
GO
SET IDENTITY_INSERT [dbo].[lgu_login_usuario] ON 

GO
INSERT [dbo].[lgu_login_usuario] ([ID], [USU_ID], [FECHA_MOVIMIENTO], [TIPO_MOVIMIENTO]) VALUES (1, 1, CAST(N'2017-01-29 14:30:12.2330000' AS DateTime2), N'Ingresar')
GO
INSERT [dbo].[lgu_login_usuario] ([ID], [USU_ID], [FECHA_MOVIMIENTO], [TIPO_MOVIMIENTO]) VALUES (2, 1, CAST(N'2017-01-29 14:30:24.0130000' AS DateTime2), N'Salir')
GO
INSERT [dbo].[lgu_login_usuario] ([ID], [USU_ID], [FECHA_MOVIMIENTO], [TIPO_MOVIMIENTO]) VALUES (3, 1, CAST(N'2017-02-27 12:40:59.0300000' AS DateTime2), N'Ingresar')
GO
INSERT [dbo].[lgu_login_usuario] ([ID], [USU_ID], [FECHA_MOVIMIENTO], [TIPO_MOVIMIENTO]) VALUES (4, 1, CAST(N'2017-02-27 16:30:53.1530000' AS DateTime2), N'Ingresar')
GO
INSERT [dbo].[lgu_login_usuario] ([ID], [USU_ID], [FECHA_MOVIMIENTO], [TIPO_MOVIMIENTO]) VALUES (5, 1, CAST(N'2017-02-28 06:30:59.1930000' AS DateTime2), N'Ingresar')
GO
INSERT [dbo].[lgu_login_usuario] ([ID], [USU_ID], [FECHA_MOVIMIENTO], [TIPO_MOVIMIENTO]) VALUES (6, 1, CAST(N'2017-03-02 04:58:56.9570000' AS DateTime2), N'Ingresar')
GO
INSERT [dbo].[lgu_login_usuario] ([ID], [USU_ID], [FECHA_MOVIMIENTO], [TIPO_MOVIMIENTO]) VALUES (7, 1, CAST(N'2017-03-10 03:49:14.6830000' AS DateTime2), N'Ingresar')
GO
INSERT [dbo].[lgu_login_usuario] ([ID], [USU_ID], [FECHA_MOVIMIENTO], [TIPO_MOVIMIENTO]) VALUES (8, 1, CAST(N'2017-03-10 04:05:57.7800000' AS DateTime2), N'Ingresar')
GO
INSERT [dbo].[lgu_login_usuario] ([ID], [USU_ID], [FECHA_MOVIMIENTO], [TIPO_MOVIMIENTO]) VALUES (9, 1, CAST(N'2017-03-10 05:33:42.4730000' AS DateTime2), N'Ingresar')
GO
INSERT [dbo].[lgu_login_usuario] ([ID], [USU_ID], [FECHA_MOVIMIENTO], [TIPO_MOVIMIENTO]) VALUES (10, 1, CAST(N'2017-03-26 10:17:58.7170000' AS DateTime2), N'Ingresar')
GO
INSERT [dbo].[lgu_login_usuario] ([ID], [USU_ID], [FECHA_MOVIMIENTO], [TIPO_MOVIMIENTO]) VALUES (11, 1, CAST(N'2017-04-26 06:46:17.5270000' AS DateTime2), N'Ingresar')
GO
INSERT [dbo].[lgu_login_usuario] ([ID], [USU_ID], [FECHA_MOVIMIENTO], [TIPO_MOVIMIENTO]) VALUES (12, 1, CAST(N'2017-04-26 06:46:18.9970000' AS DateTime2), N'Ingresar')
GO
SET IDENTITY_INSERT [dbo].[lgu_login_usuario] OFF
GO
SET IDENTITY_INSERT [dbo].[per_persona] ON 

GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (3, N'12535306-1', N'VICTOR HUGO', N'CORONADO', N'ALARCON', 0, 15, 327, N'Pasaje Cordón Roma 0621 Puente Alto', 3, 1, N'85006988', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (6, N'13671095-8', N'González', N'Garcia', N'', 0, 15, 295, N'Prueba', 3, 4, N'+56994359451', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (8, N'11111111-1', N'Victor', N'Garcia', N'G', 0, 15, 295, N'asas', 4, 6, N'', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (9, N'11111111-1', N'victor', N'garcia', N'', 0, 15, 295, N'pepepep', 4, 7, N'', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (10, N'22222222-2', N'victor', N'garcia', N'Dos', 0, 15, 295, N'asasas', 4, 8, N'', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (11, N'55555555-5', N'victor', N'garcia', N'Tres', 0, 15, 295, N'asasasas', 4, 9, N'', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (12, N'55555555-5', N'victor', N'garcia', N'Cuatro', 0, 15, 295, N'asasas', 4, 10, N'', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (13, N'99999999-9', N'victor', N'garcia', N'Seis', 0, 15, 295, N'asas', 4, 12, N'', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (14, N'10452691-8', N'Pedro Pablo', N'Contreras', N'', 0, 15, 327, N'Pppp', 3, 13, N'569874521', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (15, N'12193014-5', N'Ines', N'Retamales', N'Contreras', 0, 15, 327, N'', 3, 14, N'5698745121', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (16, N'10452691-8', N'Otro', N'Otro', N'', 0, 15, 327, N'', 3, 15, N'56985006981', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (17, N'10452691-8', N'Pedro Pablo', N'Contreras', N'', 0, 15, 327, N'prueba de direccion', 3, 16, N'569874521', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (18, N'12193014-5', N'Ines', N'Retamales', N'Contreras', 0, 15, 327, N'', 3, 17, N'5698745121', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (19, N'77777777-7', N'Victor ', N'Garcia', N'Cinco', 0, 15, 295, N'asas', 4, 11, N'', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (20, N'11111111-1', N'Victor', N'García', N'', 0, 15, 295, N'No registrada', 5, 18, N'', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (21, N'13597434-k', N'Danitza', N'Salazar', N'Ojeda', 0, 15, 295, N'', 4, 19, N'96278728', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (22, N'11111111-1', N'Victor', N'García', N'Gonzalez', 0, 15, 295, N'', 4, 20, N'94359451', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (23, N'13597434-k', N'Danitza ', N'Salazar ', N'Ojeda ', 0, 15, 295, N'Gral.  Bulnes', 4, 21, N'227868835', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (24, N'09166213-2', N'Miguel', N'Abarca', N'Soto', 0, 15, 295, N'Avda. Compañía #2398', 5, 22, N'975778905', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (25, N'12239244-9', N'Marcia ', N'Quiroga', N'Bastias', 0, 15, 295, N'Avda. Compañía #2398', 5, 23, N'975382632', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (27, N'55555555-5', N'prueba', N'prueba', N'', 0, 15, 308, N'prueba', 5, 31, N'985006988', 0)
GO
INSERT [dbo].[per_persona] ([ID], [RUT], [NOMBRES], [APELLIDO_PATERNO], [APELLIDO_MATERNO], [PAIS_ID], [REG_ID], [COM_ID], [DIRECCION_COMPLETA], [INST_ID], [USU_ID], [TELEFONOS], [ELIMINADO]) VALUES (28, N'123123123', N'Víctor', N'García', N'González', 0, 15, 295, N'Gral.  Bulnes 478 depto. 324', 4, 32, N'2258745875', 0)
GO
SET IDENTITY_INSERT [dbo].[per_persona] OFF
GO
SET IDENTITY_INSERT [dbo].[reg_region] ON 

GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (1, N'ARICA Y PARINACOTA', N'XV', 2, 4)
GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (2, N'TARAPACÁ', N'I', 2, 7)
GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (3, N'ANTOFAGASTA', N'II', 3, 9)
GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (4, N'ATACAMA ', N'III', 3, 9)
GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (5, N'COQUIMBO ', N'IV', 3, 15)
GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (6, N'VALPARAÍSO ', N'V', 8, 38)
GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (7, N'DEL LIBERTADOR GRAL. BERNARDO O''HIGGINS ', N'VI', 3, 33)
GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (8, N'DEL MAULE', N'VII', 4, 30)
GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (9, N'DEL BIOBÍO ', N'VIII', 4, 54)
GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (10, N'DE LA ARAUCANÍA', N'IX', 2, 32)
GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (11, N'DE LOS RÍOS', N'XIV', 2, 12)
GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (12, N'DE LOS LAGOS', N'X', 4, 30)
GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (13, N'AISÉN DEL GRAL. CARLOS IBAÑEZ DEL CAMPO ', N'XI', 4, 10)
GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (14, N'MAGALLANES Y DE LA ANTÁRTICA CHILENA', N'XII', 4, 11)
GO
INSERT [dbo].[reg_region] ([ID], [NOMBRE], [ROMANO], [NUMERO_PROVINCIAS], [NUMERO_COMUNAS]) VALUES (15, N'METROPOLITANA DE SANTIAGO', N'RM', 6, 52)
GO
SET IDENTITY_INSERT [dbo].[reg_region] OFF
GO
SET IDENTITY_INSERT [dbo].[rol_rol] ON 

GO
INSERT [dbo].[rol_rol] ([ID], [NOMBRE], [DESCRIPCION], [ELIMINADO]) VALUES (1, N'Super Administrador', N'Rol encargado de administrar todo el sistema con permisos especiales', 0)
GO
INSERT [dbo].[rol_rol] ([ID], [NOMBRE], [DESCRIPCION], [ELIMINADO]) VALUES (2, N'Administrador', N'Administra sus instituciones', 0)
GO
INSERT [dbo].[rol_rol] ([ID], [NOMBRE], [DESCRIPCION], [ELIMINADO]) VALUES (3, N'Supervisor', N'Gestiona actividades de la institucion', 0)
GO
SET IDENTITY_INSERT [dbo].[rol_rol] OFF
GO
SET IDENTITY_INSERT [dbo].[TIC_TIPO_CANCHA] ON 

GO
INSERT [dbo].[TIC_TIPO_CANCHA] ([ID], [NOMBRE], [TPS_ID], [LARGO], [ANCHO], [TIPO_MEDIDA], [ELIMINADO], [CANTIDAD_JUGADORES], [INST_ID]) VALUES (1, N'prueba de nombre', 1, 240, 350, 0, 0, 7, 3)
GO
SET IDENTITY_INSERT [dbo].[TIC_TIPO_CANCHA] OFF
GO
SET IDENTITY_INSERT [dbo].[TPS_TIPO_SUPERFICIE] ON 

GO
INSERT [dbo].[TPS_TIPO_SUPERFICIE] ([ID], [NOMBRE], [ELIMINADO]) VALUES (1, N'Pasto Natural', 0)
GO
INSERT [dbo].[TPS_TIPO_SUPERFICIE] ([ID], [NOMBRE], [ELIMINADO]) VALUES (2, N'Pasto Sintético', 0)
GO
INSERT [dbo].[TPS_TIPO_SUPERFICIE] ([ID], [NOMBRE], [ELIMINADO]) VALUES (3, N'Madera', 0)
GO
INSERT [dbo].[TPS_TIPO_SUPERFICIE] ([ID], [NOMBRE], [ELIMINADO]) VALUES (4, N'Cemento', 0)
GO
INSERT [dbo].[TPS_TIPO_SUPERFICIE] ([ID], [NOMBRE], [ELIMINADO]) VALUES (5, N'Otra', 0)
GO
SET IDENTITY_INSERT [dbo].[TPS_TIPO_SUPERFICIE] OFF
GO
ALTER TABLE [dbo].[CLIE_CLIENTE] ADD  CONSTRAINT [defo_CLIE_CLIENTE_ELIMINADO]  DEFAULT ((0)) FOR [ELIMINADO]
GO
ALTER TABLE [dbo].[CSG_CONFIGURACION_SEGMENTO] ADD  CONSTRAINT [defo_CSG_CONFIGURACION_SEGMENTO_ELIMINADO]  DEFAULT ((0)) FOR [ELIMINADO]
GO
ALTER TABLE [dbo].[RES_RESERVA] ADD  CONSTRAINT [defo_RES_RESERVA_ELIMINADO]  DEFAULT ((0)) FOR [ELIMINADO]
GO
ALTER TABLE [dbo].[RIN_RESPONSABLE_INSTITUCION] ADD  CONSTRAINT [defo_RIN_RESPONSABLE_INSTITUCION_TIPO]  DEFAULT ((0)) FOR [TIPO]
GO
ALTER TABLE [dbo].[RIN_RESPONSABLE_INSTITUCION] ADD  CONSTRAINT [defo_RIN_RESPONSABLE_INSTITUCION_ELIMINADO]  DEFAULT ((0)) FOR [ELIMINADO]
GO
ALTER TABLE [dbo].[RL_TIC_INST] ADD  CONSTRAINT [defo_RL_TIC_INST_ELIMINADO]  DEFAULT ((0)) FOR [ELIMINADO]
GO
ALTER TABLE [dbo].[RL_TIC_INST] ADD  CONSTRAINT [defo_RL_TIC_INST_DESCUENTO_SEGMENTO]  DEFAULT ((0)) FOR [DESCUENTO_SEGMENTO]
GO
ALTER TABLE [dbo].[SGH_SEGMENTO_HORARIO] ADD  CONSTRAINT [defo_SGH_SEGMENTO_HORARIO_ACTIVO]  DEFAULT ((1)) FOR [ACTIVO]
GO
ALTER TABLE [dbo].[SGH_SEGMENTO_HORARIO] ADD  CONSTRAINT [defo_SGH_SEGMENTO_HORARIO_ELIMINADO]  DEFAULT ((0)) FOR [ELIMINADO]
GO
ALTER TABLE [dbo].[au_autentificacion_usuario]  WITH CHECK ADD  CONSTRAINT [fk_au_autentificacion_usuario] FOREIGN KEY([INST_ID])
REFERENCES [dbo].[inst_institucion] ([ID])
GO
ALTER TABLE [dbo].[au_autentificacion_usuario] CHECK CONSTRAINT [fk_au_autentificacion_usuario]
GO
ALTER TABLE [dbo].[coni_configuracion_institucion]  WITH CHECK ADD  CONSTRAINT [fk_coni_configuracion_institucion] FOREIGN KEY([INST_ID])
REFERENCES [dbo].[inst_institucion] ([ID])
GO
ALTER TABLE [dbo].[coni_configuracion_institucion] CHECK CONSTRAINT [fk_coni_configuracion_institucion]
GO
ALTER TABLE [dbo].[CSG_CONFIGURACION_SEGMENTO]  WITH CHECK ADD  CONSTRAINT [fk_CSG_CONFIGURACION_SEGMENTO] FOREIGN KEY([INST_ID])
REFERENCES [dbo].[inst_institucion] ([ID])
GO
ALTER TABLE [dbo].[CSG_CONFIGURACION_SEGMENTO] CHECK CONSTRAINT [fk_CSG_CONFIGURACION_SEGMENTO]
GO
ALTER TABLE [dbo].[per_persona]  WITH CHECK ADD  CONSTRAINT [fk_per_persona] FOREIGN KEY([USU_ID])
REFERENCES [dbo].[au_autentificacion_usuario] ([ID])
GO
ALTER TABLE [dbo].[per_persona] CHECK CONSTRAINT [fk_per_persona]
GO
ALTER TABLE [dbo].[RES_RESERVA]  WITH CHECK ADD  CONSTRAINT [fk_RES_RESERVA] FOREIGN KEY([INST_ID])
REFERENCES [dbo].[inst_institucion] ([ID])
GO
ALTER TABLE [dbo].[RES_RESERVA] CHECK CONSTRAINT [fk_RES_RESERVA]
GO
ALTER TABLE [dbo].[RIN_RESPONSABLE_INSTITUCION]  WITH CHECK ADD  CONSTRAINT [fk_RIN_RESPONSABLE_INSTITUCION] FOREIGN KEY([INST_ID])
REFERENCES [dbo].[inst_institucion] ([ID])
GO
ALTER TABLE [dbo].[RIN_RESPONSABLE_INSTITUCION] CHECK CONSTRAINT [fk_RIN_RESPONSABLE_INSTITUCION]
GO
ALTER TABLE [dbo].[RL_TIC_INST]  WITH CHECK ADD  CONSTRAINT [fk_RL_TIC_INST] FOREIGN KEY([INST_ID])
REFERENCES [dbo].[inst_institucion] ([ID])
GO
ALTER TABLE [dbo].[RL_TIC_INST] CHECK CONSTRAINT [fk_RL_TIC_INST]
GO
ALTER TABLE [dbo].[RL_TIC_INST]  WITH CHECK ADD  CONSTRAINT [fk_RL_TIC_INST_0] FOREIGN KEY([TIC_ID])
REFERENCES [dbo].[TIC_TIPO_CANCHA] ([ID])
GO
ALTER TABLE [dbo].[RL_TIC_INST] CHECK CONSTRAINT [fk_RL_TIC_INST_0]
GO
ALTER TABLE [dbo].[SGH_SEGMENTO_HORARIO]  WITH CHECK ADD  CONSTRAINT [fk_SGH_SEGMENTO_HORARIO] FOREIGN KEY([INST_ID])
REFERENCES [dbo].[inst_institucion] ([ID])
GO
ALTER TABLE [dbo].[SGH_SEGMENTO_HORARIO] CHECK CONSTRAINT [fk_SGH_SEGMENTO_HORARIO]
GO
ALTER TABLE [dbo].[TIC_TIPO_CANCHA]  WITH CHECK ADD  CONSTRAINT [fk_TIC_TIPO_CANCHA] FOREIGN KEY([INST_ID])
REFERENCES [dbo].[inst_institucion] ([ID])
GO
ALTER TABLE [dbo].[TIC_TIPO_CANCHA] CHECK CONSTRAINT [fk_TIC_TIPO_CANCHA]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FORMATO 08:00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CSG_CONFIGURACION_SEGMENTO', @level2type=N'COLUMN',@level2name=N'HORA_INICIO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FORMATO 17:00' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CSG_CONFIGURACION_SEGMENTO', @level2type=N'COLUMN',@level2name=N'HORA_TERMINO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: Dueño, 1: Administrador, 2: Supervisor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RIN_RESPONSABLE_INSTITUCION', @level2type=N'COLUMN',@level2name=N'TIPO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CORRESPONDE AL DESCUENTO POR SEGMENTO, EJEMPLO 5000 * 0.1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RL_TIC_INST', @level2type=N'COLUMN',@level2name=N'DESCUENTO_SEGMENTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'RELACION ENTRE EL TIPO CANCHA Y LA INSTITUCION' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RL_TIC_INST'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TIPO SUPERFICIE 0:PASTO NATURAL, 1: PASTO SINTETICO, 2: MADERA, 3: CEMENTO, 4: OTRA ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIC_TIPO_CANCHA', @level2type=N'COLUMN',@level2name=N'TPS_ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: METROS, 1: CENTIMETROS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIC_TIPO_CANCHA', @level2type=N'COLUMN',@level2name=N'TIPO_MEDIDA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ESPECIFICAR LOS TIPOS DE CANCHA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TIC_TIPO_CANCHA'
GO
