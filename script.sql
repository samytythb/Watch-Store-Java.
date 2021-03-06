USE [master]
GO
/****** Object:  Database [WEBDONGHO]    Script Date: 6/3/2022 8:43:14 PM ******/
CREATE DATABASE [WEBDONGHO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WEBDONGHO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WEBDONGHO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WEBDONGHO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WEBDONGHO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WEBDONGHO] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WEBDONGHO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WEBDONGHO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WEBDONGHO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WEBDONGHO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WEBDONGHO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WEBDONGHO] SET ARITHABORT OFF 
GO
ALTER DATABASE [WEBDONGHO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WEBDONGHO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WEBDONGHO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WEBDONGHO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WEBDONGHO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WEBDONGHO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WEBDONGHO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WEBDONGHO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WEBDONGHO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WEBDONGHO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WEBDONGHO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WEBDONGHO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WEBDONGHO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WEBDONGHO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WEBDONGHO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WEBDONGHO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WEBDONGHO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WEBDONGHO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WEBDONGHO] SET  MULTI_USER 
GO
ALTER DATABASE [WEBDONGHO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WEBDONGHO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WEBDONGHO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WEBDONGHO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WEBDONGHO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WEBDONGHO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WEBDONGHO] SET QUERY_STORE = OFF
GO
USE [WEBDONGHO]
GO
/****** Object:  Table [dbo].[CTPD]    Script Date: 6/3/2022 8:43:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPD](
	[DONGIA] [int] NULL,
	[SOLUONG] [int] NULL,
	[MAPD] [int] NOT NULL,
	[MADH] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPD] ASC,
	[MADH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTPN]    Script Date: 6/3/2022 8:43:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPN](
	[DONGIA] [float] NULL,
	[SOLUONG] [int] NULL,
	[MAPN] [varchar](255) NOT NULL,
	[MADH] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC,
	[MADH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONGHO]    Script Date: 6/3/2022 8:43:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONGHO](
	[MADH] [varchar](255) NOT NULL,
	[GIA] [float] NULL,
	[HINHANH] [varchar](255) NULL,
	[LOAIDH] [nvarchar](255) NULL,
	[MOTA] [nvarchar](500) NULL,
	[SOLUONGTON] [int] NULL,
	[TENDH] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MADH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 6/3/2022 8:43:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [varchar](255) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[EMAIL] [varchar](255) NULL,
	[GIOITINH] [bit] NULL,
	[HOTEN] [nvarchar](50) NULL,
	[NGAYSINH] [datetime] NULL,
	[SDT] [varchar](255) NULL,
	[SOCMND] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 6/3/2022 8:43:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [varchar](255) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[EMAIL] [varchar](255) NULL,
	[GIOITINH] [bit] NULL,
	[HOTEN] [nvarchar](50) NULL,
	[NGAYSINH] [datetime] NULL,
	[SDT] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUDAT]    Script Date: 6/3/2022 8:43:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUDAT](
	[MAPD] [int] IDENTITY(1,1) NOT NULL,
	[DIACHI] [nvarchar](100) NULL,
	[HOTENNGUOINHAN] [nvarchar](50) NULL,
	[NGAYDAT] [datetime] NULL,
	[NGAYGIAO] [datetime] NULL,
	[SDT] [varchar](15) NULL,
	[TRANGTHAI] [int] NULL,
	[MAKH] [varchar](255) NULL,
	[MANV] [varchar](255) NULL,
 CONSTRAINT [PK__PHIEUDAT__603F61C4530DB6FD] PRIMARY KEY CLUSTERED 
(
	[MAPD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 6/3/2022 8:43:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MAPN] [varchar](255) NOT NULL,
	[NGAYNHAP] [datetime] NULL,
	[MANV] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 6/3/2022 8:43:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TENTK] [varchar](255) NOT NULL,
	[MATKHAU] [varchar](255) NULL,
	[MAKH] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[TENTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOANADMIN]    Script Date: 6/3/2022 8:43:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOANADMIN](
	[TENTK] [varchar](255) NOT NULL,
	[MATKHAU] [varchar](255) NULL,
	[MANV] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[TENTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DONGHO] ([MADH], [GIA], [HINHANH], [LOAIDH], [MOTA], [SOLUONGTON], [TENDH]) VALUES (N'DH0', 1000, N'DH3.jpg', N'Nam', N'dong ho chat luong vcl', 47, N'Apple Watch series 3')
INSERT [dbo].[DONGHO] ([MADH], [GIA], [HINHANH], [LOAIDH], [MOTA], [SOLUONGTON], [TENDH]) VALUES (N'DH1', 10000, N'DH2.png', N'Nữ', N'Đồng hồ rô lẽ nhập khẩu chính hãng từ du bài', 40, N'Rolex mạ vàng 9 số 4')
INSERT [dbo].[DONGHO] ([MADH], [GIA], [HINHANH], [LOAIDH], [MOTA], [SOLUONGTON], [TENDH]) VALUES (N'DH10', 2000, N'DH4.jpg', N'Nam', N'khogn co mo ta', 0, N'Đồng hồ 10')
INSERT [dbo].[DONGHO] ([MADH], [GIA], [HINHANH], [LOAIDH], [MOTA], [SOLUONGTON], [TENDH]) VALUES (N'DH100', 10000, N'DH0.jpg', N'Nam', N'đồng hồ casio chính hãng trung quốc', 0, N'Đồng hồ casio')
INSERT [dbo].[DONGHO] ([MADH], [GIA], [HINHANH], [LOAIDH], [MOTA], [SOLUONGTON], [TENDH]) VALUES (N'DH11', 2000, N'DH1.jpg', N'Nam', N'đồng hồ mạ vàng', 9, N'Đồng hồ ro lex')
INSERT [dbo].[DONGHO] ([MADH], [GIA], [HINHANH], [LOAIDH], [MOTA], [SOLUONGTON], [TENDH]) VALUES (N'DH2', 200, N'DH1.jpg', N'Nam', N'có mô tả rồi nek', 7, N'Apple Watch series 4')
INSERT [dbo].[DONGHO] ([MADH], [GIA], [HINHANH], [LOAIDH], [MOTA], [SOLUONGTON], [TENDH]) VALUES (N'DH3', 500, N'DH0.jpg', N'Nữ', N'cung khong co mo ta đâu', 97, N'Apple Watch series 2')
INSERT [dbo].[DONGHO] ([MADH], [GIA], [HINHANH], [LOAIDH], [MOTA], [SOLUONGTON], [TENDH]) VALUES (N'DH4', 1000, N'women.jpg', N'Nữ', N'đồng hồ xịn xò con bò phù hợp với mọi lứa tuổi', 8, N'Apple Watch series 1')
INSERT [dbo].[DONGHO] ([MADH], [GIA], [HINHANH], [LOAIDH], [MOTA], [SOLUONGTON], [TENDH]) VALUES (N'DH5', 500, N'DH4.jpg', N'Nữ', N'dong ho rô lẽ mà là hang fake', 96, N'Rolex mạ vàng 9 số 4')
INSERT [dbo].[DONGHO] ([MADH], [GIA], [HINHANH], [LOAIDH], [MOTA], [SOLUONGTON], [TENDH]) VALUES (N'DH9', 1000, N'man.jpg', N'Nam', N'khong co', 0, N'Apple Watch series 3')
INSERT [dbo].[DONGHO] ([MADH], [GIA], [HINHANH], [LOAIDH], [MOTA], [SOLUONGTON], [TENDH]) VALUES (N'DH91', 1000, N'DH3.jpg', N'Nữ', N'khong co', 0, N'Đồng hồ 1011')
INSERT [dbo].[DONGHO] ([MADH], [GIA], [HINHANH], [LOAIDH], [MOTA], [SOLUONGTON], [TENDH]) VALUES (N'DH911', 1000, N'DH0.jpg', N'Nữ', N'khong co', 0, N'Rolex mạ vàng 9 số 4')
INSERT [dbo].[DONGHO] ([MADH], [GIA], [HINHANH], [LOAIDH], [MOTA], [SOLUONGTON], [TENDH]) VALUES (N'DH9111', 10, N'DH1.jpg', N'Nam', N'1', 0, N'Đồng hồ 1011')
INSERT [dbo].[DONGHO] ([MADH], [GIA], [HINHANH], [LOAIDH], [MOTA], [SOLUONGTON], [TENDH]) VALUES (N'DH99', 1000, N'tissot.jpg', N'Nam', N'mo ta mo ta mo ta', 0, N'Apple Watch series 199')
GO
INSERT [dbo].[KHACHHANG] ([MAKH], [DIACHI], [EMAIL], [GIOITINH], [HOTEN], [NGAYSINH], [SDT], [SOCMND]) VALUES (N'leduc', N'Quảng Bình', N'leminhduc20082001@gmail.com', 1, N'Lê Minh Đức', NULL, N'0778569006', NULL)
GO
INSERT [dbo].[NHANVIEN] ([MANV], [DIACHI], [EMAIL], [GIOITINH], [HOTEN], [NGAYSINH], [SDT]) VALUES (N'NV01', N'Quang binh', N'leminh@gmail.com', NULL, N'Le Minh Duc', CAST(N'2001-08-20T00:00:00.000' AS DateTime), N'0778569006')
GO
INSERT [dbo].[TAIKHOAN] ([TENTK], [MATKHAU], [MAKH]) VALUES (N'leduc', N'leduc', N'leduc')
GO
INSERT [dbo].[TAIKHOANADMIN] ([TENTK], [MATKHAU], [MANV]) VALUES (N'leminhduc', N'leminhduc', N'NV01')
GO
ALTER TABLE [dbo].[CTPD]  WITH CHECK ADD  CONSTRAINT [FK_bc00gyjav83fwdeng92cj31i9] FOREIGN KEY([MADH])
REFERENCES [dbo].[DONGHO] ([MADH])
GO
ALTER TABLE [dbo].[CTPD] CHECK CONSTRAINT [FK_bc00gyjav83fwdeng92cj31i9]
GO
ALTER TABLE [dbo].[CTPD]  WITH CHECK ADD  CONSTRAINT [FK_j3pf7ns5pu9tarnb3imp5tn31] FOREIGN KEY([MAPD])
REFERENCES [dbo].[PHIEUDAT] ([MAPD])
GO
ALTER TABLE [dbo].[CTPD] CHECK CONSTRAINT [FK_j3pf7ns5pu9tarnb3imp5tn31]
GO
ALTER TABLE [dbo].[CTPN]  WITH CHECK ADD  CONSTRAINT [FK_2c4pdb0wh4ravt1l0hfs5kcqy] FOREIGN KEY([MAPN])
REFERENCES [dbo].[PHIEUNHAP] ([MAPN])
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [FK_2c4pdb0wh4ravt1l0hfs5kcqy]
GO
ALTER TABLE [dbo].[CTPN]  WITH CHECK ADD  CONSTRAINT [FK_ixyfiuk6ddc6g3echhkat3t4k] FOREIGN KEY([MADH])
REFERENCES [dbo].[DONGHO] ([MADH])
GO
ALTER TABLE [dbo].[CTPN] CHECK CONSTRAINT [FK_ixyfiuk6ddc6g3echhkat3t4k]
GO
ALTER TABLE [dbo].[PHIEUDAT]  WITH CHECK ADD  CONSTRAINT [FK_jujvdrk3p74agbncl5wo6wvsx] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUDAT] CHECK CONSTRAINT [FK_jujvdrk3p74agbncl5wo6wvsx]
GO
ALTER TABLE [dbo].[PHIEUDAT]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUDAT_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[PHIEUDAT] CHECK CONSTRAINT [FK_PHIEUDAT_KHACHHANG]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FK_byv71nofdiudb5puydtk15k2m] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FK_byv71nofdiudb5puydtk15k2m]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [FK_jcmwd49jc1dmk569kobcm2fd0] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [FK_jcmwd49jc1dmk569kobcm2fd0]
GO
ALTER TABLE [dbo].[TAIKHOANADMIN]  WITH CHECK ADD  CONSTRAINT [FK_d4sr6qgrr629ueefgf2517kwy] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[TAIKHOANADMIN] CHECK CONSTRAINT [FK_d4sr6qgrr629ueefgf2517kwy]
GO
USE [master]
GO
ALTER DATABASE [WEBDONGHO] SET  READ_WRITE 
GO
