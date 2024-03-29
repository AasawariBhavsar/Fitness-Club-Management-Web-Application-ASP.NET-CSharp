USE [master]
GO
/****** Object:  Database [FITNESS_CLUB]    Script Date: 22-09-2019 20:32:03 ******/
CREATE DATABASE [FITNESS_CLUB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FITNESS_CLUB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\FITNESS_CLUB.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FITNESS_CLUB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\FITNESS_CLUB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FITNESS_CLUB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FITNESS_CLUB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FITNESS_CLUB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [FITNESS_CLUB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FITNESS_CLUB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FITNESS_CLUB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FITNESS_CLUB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FITNESS_CLUB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FITNESS_CLUB] SET  MULTI_USER 
GO
ALTER DATABASE [FITNESS_CLUB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FITNESS_CLUB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FITNESS_CLUB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FITNESS_CLUB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [FITNESS_CLUB]
GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 22-09-2019 20:32:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[id] [numeric](18, 0) NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_admission]    Script Date: 22-09-2019 20:32:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_admission](
	[id] [numeric](18, 0) NOT NULL,
	[member_id] [numeric](18, 0) NULL,
	[course_id] [numeric](18, 0) NULL,
	[typeofpayment] [varchar](50) NULL,
	[amounttobepaid] [numeric](18, 0) NULL,
	[dateofadmission] [datetime] NULL,
 CONSTRAINT [PK_tbl_admission] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_course]    Script Date: 22-09-2019 20:32:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_course](
	[id] [numeric](18, 0) NOT NULL,
	[coursename] [varchar](50) NULL,
	[duration] [numeric](18, 0) NULL,
	[fees_lumsum] [numeric](18, 0) NULL,
	[fees_installments] [numeric](18, 0) NULL,
	[no_of_installments] [numeric](18, 0) NULL,
	[days_in_btw] [numeric](18, 0) NULL,
	[installment_struct] [varchar](100) NULL,
 CONSTRAINT [PK_tbl_course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_equipment]    Script Date: 22-09-2019 20:32:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_equipment](
	[id] [numeric](18, 0) NOT NULL,
	[equipmentname] [varchar](50) NULL,
	[company] [varchar](50) NULL,
	[totalqty] [numeric](18, 0) NULL,
	[priceperqty] [numeric](18, 0) NULL,
	[totalprice] [numeric](18, 0) NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_tbl_equipment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_installment]    Script Date: 22-09-2019 20:32:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_installment](
	[id] [numeric](18, 0) NOT NULL,
	[admission_id] [numeric](18, 0) NULL,
	[paydate] [date] NULL,
	[paymentdetails] [varchar](max) NULL,
	[totalpayment] [numeric](18, 0) NULL,
	[paid] [numeric](18, 0) NULL,
 CONSTRAINT [PK_tbl_installment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_member]    Script Date: 22-09-2019 20:32:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_member](
	[id] [numeric](18, 0) NOT NULL,
	[name] [varchar](50) NULL,
	[contactno] [varchar](50) NULL,
	[address] [varchar](max) NULL,
	[email] [varchar](max) NULL,
 CONSTRAINT [PK_tbl_member] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_memtrainer]    Script Date: 22-09-2019 20:32:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_memtrainer](
	[id] [numeric](18, 0) NOT NULL,
	[member_id] [varchar](50) NULL,
	[course_id] [varchar](50) NULL,
	[schedule] [varchar](50) NULL,
	[trainer_id] [numeric](18, 0) NULL,
 CONSTRAINT [PK_tbl_memtrainer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_salary]    Script Date: 22-09-2019 20:32:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_salary](
	[id] [numeric](18, 0) NULL,
	[trainer_id] [numeric](18, 0) NULL,
	[paydate] [date] NULL,
	[paymentdetails] [varchar](max) NULL,
	[salary] [numeric](18, 0) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_trainer]    Script Date: 22-09-2019 20:32:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_trainer](
	[id] [numeric](18, 0) NOT NULL,
	[name] [varchar](50) NULL,
	[contactno] [numeric](18, 0) NULL,
	[address] [varchar](max) NULL,
	[doj] [datetime] NULL,
	[schedule] [varchar](50) NULL,
	[salary] [numeric](18, 0) NULL,
	[course_id] [numeric](18, 0) NULL,
 CONSTRAINT [PK_tbl_trainer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[View_1]    Script Date: 22-09-2019 20:32:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT dbo.tbl_installment.id, dbo.tbl_course.coursename, dbo.tbl_admission.amounttobepaid, dbo.tbl_member.firstname, dbo.tbl_member.lastname, dbo.tbl_member.contactno, dbo.tbl_installment.paydate
FROM   dbo.tbl_admission INNER JOIN
             dbo.tbl_installment ON dbo.tbl_admission.id = dbo.tbl_installment.admission_id INNER JOIN
             dbo.tbl_course ON dbo.tbl_admission.course_id = dbo.tbl_course.id INNER JOIN
             dbo.tbl_member ON dbo.tbl_admission.member_id = dbo.tbl_member.id
WHERE (dbo.tbl_installment.paydate = '2019-07-18')

GO
/****** Object:  View [dbo].[View_2]    Script Date: 22-09-2019 20:32:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_2]
AS
SELECT dbo.tbl_installment.id, dbo.tbl_member.firstname, dbo.tbl_member.lastname, dbo.tbl_course.coursename, dbo.tbl_installment.paydate, dbo.tbl_installment.paymentdetails, dbo.tbl_installment.totalpayment, dbo.tbl_installment.paid
FROM   dbo.tbl_admission INNER JOIN
             dbo.tbl_member ON dbo.tbl_admission.member_id = dbo.tbl_member.id INNER JOIN
             dbo.tbl_installment ON dbo.tbl_admission.id = dbo.tbl_installment.admission_id INNER JOIN
             dbo.tbl_course ON dbo.tbl_admission.course_id = dbo.tbl_course.id
WHERE (CAST(dbo.tbl_installment.paydate AS date) BETWEEN CAST('2019-07-11' AS date) AND CAST('2019-09-19' AS date)) AND (dbo.tbl_installment.paid = 0)

GO
/****** Object:  View [dbo].[View_3]    Script Date: 22-09-2019 20:32:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_3]
AS
SELECT dbo.tbl_course.id, dbo.tbl_course.coursename
FROM   dbo.tbl_admission INNER JOIN
             dbo.tbl_course ON dbo.tbl_admission.course_id = dbo.tbl_course.id
WHERE (dbo.tbl_admission.member_id = 5)

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_course"
            Begin Extent = 
               Top = 9
               Left = 634
               Bottom = 206
               Right = 884
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "tbl_member"
            Begin Extent = 
               Top = 207
               Left = 634
               Bottom = 404
               Right = 856
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_installment"
            Begin Extent = 
               Top = 9
               Left = 352
               Bottom = 290
               Right = 577
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_admission"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 279
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1000
         Width = 1160
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1730
         Width = 1000
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[8] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_admission"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 277
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_member"
            Begin Extent = 
               Top = 9
               Left = 634
               Bottom = 273
               Right = 856
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_installment"
            Begin Extent = 
               Top = 9
               Left = 352
               Bottom = 285
               Right = 577
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_course"
            Begin Extent = 
               Top = 159
               Left = 913
               Bottom = 356
               Right = 1163
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1390
         Width = 1240
         Width = 1000
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_admission"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 305
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_course"
            Begin Extent = 
               Top = 9
               Left = 352
               Bottom = 308
               Right = 602
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_3'
GO
USE [master]
GO
ALTER DATABASE [FITNESS_CLUB] SET  READ_WRITE 
GO
