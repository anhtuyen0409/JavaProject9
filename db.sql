USE [DoAnJava]
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaCTDDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[UuDai] [int] NULL,
	[ThanhTien] [int] NULL,
	[DaXoa] [int] NULL,
	[TongThanhToan] [int] NULL,
 CONSTRAINT [PK_ChiTietDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaCTDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaCTPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [date] NULL,
	[NgayGiao] [date] NULL,
	[DaXoa] [int] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [varchar](12) NULL,
	[Email] [varchar](100) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[MaLoaiNV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiNV] [nvarchar](100) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_LoaiNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](200) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[MaLoaiTK] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTK] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [varchar](12) NULL,
	[Email] [varchar](100) NULL,
	[Fax] [varchar](50) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](200) NULL,
	[NamSinh] [date] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [varchar](12) NULL,
	[Email] [varchar](100) NULL,
	[NgayVaoLamViec] [date] NULL,
	[DaXoa] [int] NULL,
	[MaLoaiNV] [int] NULL,
	[TenDangNhap] [varchar](100) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](200) NULL,
	[ThongTin] [nvarchar](max) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [date] NULL,
	[DaXoa] [int] NULL,
	[MaNV] [int] NULL,
	[MaNCC] [int] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](200) NULL,
	[DonGia] [int] NULL,
	[NgayCapNhat] [date] NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [varchar](200) NULL,
	[SLTon] [int] NULL,
	[DaXoa] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [varchar](100) NOT NULL,
	[MatKhau] [varchar](100) NULL,
	[DaXoa] [int] NULL,
	[MaLoaiTK] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] ON 

INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (1, 1, 1, 1, 0, 5500000, 0, 5500000)
INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (2, 1, 14, 3, 500000, 11000000, 1, 10500000)
INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (3, 1, 25, 4, 5000000, 117960000, 1, 112960000)
INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (4, 2, 2, 1, 0, 6990000, 0, 6990000)
INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (5, 3, 18, 1, 0, 6490000, 0, 6490000)
INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (6, 1, 19, 3, 5000000, 47970000, 1, 42970000)
INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (7, 1, 19, 2, 5000000, 31980000, 1, 26980000)
INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (8, 1, 25, 2, 500000, 11000000, 1, 10500000)
INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (9, 1, 25, 2, 5000000, 58980000, 0, 53980000)
INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (10, 1, 1, 2, 500000, 11000000, 0, 10500000)
INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (11, 1, 20, 2, 379600, 18980000, 0, 18600400)
INSERT [dbo].[ChiTietDonDatHang] ([MaCTDDH], [MaDDH], [MaSP], [SoLuong], [UuDai], [ThanhTien], [DaXoa], [TongThanhToan]) VALUES (12, 15, 25, 3, 4423500, 88470000, 0, 84046500)
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] ON 

INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (1, 1, 1, 12, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (2, 1, 18, 20, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (6, 1, 19, 5, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (7, 4, 2, 10, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (8, 4, 14, 50, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (9, 4, 23, 30, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (10, 4, 24, 10, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (11, 4, 2, 5, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (12, 4, 1, 4, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (13, 4, 1, 2, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (14, 1, 25, 10, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (15, 9, 20, 10, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (16, 9, 21, 20, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (17, 9, 22, 10, 0)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (18, 9, 2, 1, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (19, 1, 1, 2, 1)
INSERT [dbo].[ChiTietPhieuNhap] ([MaCTPN], [MaPN], [MaSP], [SoLuong], [DaXoa]) VALUES (20, 1, 1, 10, 1)
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (1, CAST(N'2022-04-23' AS Date), CAST(N'2022-04-23' AS Date), 1, 1)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (2, CAST(N'2022-05-20' AS Date), CAST(N'2022-05-20' AS Date), 1, 4)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (3, CAST(N'2022-05-20' AS Date), CAST(N'2022-05-20' AS Date), 1, 4)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (4, CAST(N'2022-04-25' AS Date), CAST(N'2022-04-30' AS Date), 1, 4)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (5, CAST(N'2022-04-23' AS Date), CAST(N'2022-04-23' AS Date), 1, 1)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (6, CAST(N'2022-04-23' AS Date), CAST(N'2022-04-23' AS Date), 1, 1)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (7, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-10' AS Date), 0, 5)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (8, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-11' AS Date), 0, 6)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (9, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-11' AS Date), 0, 7)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (10, CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), 1, 1)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (11, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-09' AS Date), 1, 1)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (12, CAST(N'2022-05-26' AS Date), CAST(N'2022-05-27' AS Date), 1, 1)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (13, CAST(N'2022-05-03' AS Date), CAST(N'2022-05-04' AS Date), 1, 1)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (14, CAST(N'2022-05-17' AS Date), CAST(N'2022-05-18' AS Date), 1, 1)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (15, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-16' AS Date), 0, 6)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [NgayGiao], [DaXoa], [MaKH]) VALUES (16, CAST(N'2022-05-19' AS Date), CAST(N'2022-05-19' AS Date), 0, 11)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (1, N'Lê Văn An', N'Q9', N'0323303233', N'an@gmail.com', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (2, N'Nguyễn Võ Hữu Duy', N'Q1', N'0352233222', N'duy@gmail.com', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (3, N'Nguyễn Anh Tuyên', N'15C khu phố 6 p.Hiệp Phú q.9', N'0394420076', N'nguyenanhtuyen10a5@gmail.com', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (4, N'Nguyễn Thanh Tấn', N'Cát Chánh', N'0356623456', N'tan@gmail.com', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (5, N'duy', N'Q5', N'0839101201', N'duy@gmail.com', 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (6, N'Đức Minh', N'Thủ Đức', N'0986576124', N'minh@gmail.com', 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (7, N'Hoàng Duy', N'Bình Thạnh', N'0236653265', N'hduy@gmail.com', 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (8, N'Võ Thành Công', N'Cát Chánh', N'0356695897', N'cong@gmail.com', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (9, N'tuyên', N'Q9', N'0235698563', N'tuyen@gmail.com', 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (10, N'sdsd', N'sdsd', N'0563256985', N't@gmail.com', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (11, N'Anh Tuyên', N'Hiệp Phú', N'0394420076', N'nguyenanhtuyen10a5@gmail.com', 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [Email], [DaXoa]) VALUES (12, N'Ngô Đức Minh', N'Q1', N'0356686233', N'ducminh@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiNhanVien] ON 

INSERT [dbo].[LoaiNhanVien] ([MaLoaiNV], [TenLoaiNV], [DaXoa]) VALUES (1, N'Bộ phận quản lý kho', 0)
INSERT [dbo].[LoaiNhanVien] ([MaLoaiNV], [TenLoaiNV], [DaXoa]) VALUES (2, N'Bộ phận bán hàng', 0)
SET IDENTITY_INSERT [dbo].[LoaiNhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (1, N'Iphone', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (3, N'Oppo', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (4, N'Xiaomi', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (5, N'Vivo', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (6, N'Samsung', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (9, N'Nokia', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (10, N'mobie', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (11, N'', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (12, N't', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (13, N'Sam', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (14, N'Sony', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (15, N'Pixel', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (16, N'', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (17, N'', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (18, N'd', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (19, N'Nokia2', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (20, N'Nokia', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [DaXoa]) VALUES (21, N'Nokia2', 1)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] ON 

INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (1, N'Quản lý kho')
INSERT [dbo].[LoaiTaiKhoan] ([MaLoaiTK], [TenLoaiTK]) VALUES (2, N'Bán hàng')
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (1, N'Cửa hàng Iphone', N'161 Lê Văn Việt Q.9 TP.HCM', N'0350303033', N'ip123@gmail.com', N'+84 (8) 3823 3318', 0)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (2, N'Trung tâm Oppo', N'188 Đ. Võ Văn Ngân, Bình Thọ, Thủ Đức, Thành phố Hồ Chí Minh', N'0283736224', N'ttoppo@gmail.com', N'+84 (8) 3820 3320', 0)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (3, N'Thế Giới Xiaomi - Siêu thị Xiaomi chính hãng', N'134 Trần Phú, Phường 4, Quận 5, Thành phố Hồ Chí Minh', N'1900 636469', N'thegioixiaomi@gmail.com', N'+84 (8) 3822 2522', 0)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (4, N'Vivo vietnam', N'Phòng T15-02, Lottery Tower, 77 Trần Nhân Tôn, Phường 9, Quận 5, Thành phố Hồ Chí Minh', N'1800 6101', N'vivovn@gmail.com', N'+84 (8) 2555 3333', 0)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (5, N'è', N'è', N'df', N'df', N'df', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (6, N'fdf', N'df', N'df', N'df', N'df', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (7, N'êf', N'è', N'è', N'è', N'è', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (8, N'sd', N'sd', N'sd', N'sd', N'sd', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (9, N'ư', N'ư', N'u', N'u', N'u', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (10, N's', N'ss', N's', N's', N's', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (11, N'', N'', N'', N'', N'', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (12, N'', N'', N'', N'', N'', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (13, N'sd', N'sd', N'sd', N'sd', N'sd', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (14, N'tuyen', N'dfdf', N'dfdf', N'tuyen@gmail.com', N'dfdf', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (15, N'sd', N'sd', N'sd', N'sd123@gmail.com', N'sd', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (16, N'dgd', N'dgdg', N'0945678997', N't@gmail.com', N's', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email], [Fax], [DaXoa]) VALUES (17, N'sd', N'sd', N'0236598756', N't@gmail.com', N'54545', 1)
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (1, N'Nguyễn Võ Hữu Duy', CAST(N'2001-05-01' AS Date), N'Cát Tiến', N'0752233022', N'duy@gmail.com', CAST(N'2022-04-18' AS Date), 1, 1, N'qlkho2')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (2, N'Nguyễn Thành Quốc', CAST(N'2001-02-02' AS Date), N'Cát Nhơn', N'0325506033', N'quoc@gmail.com', CAST(N'2022-04-10' AS Date), 1, 2, N'qlbanhang2')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (3, N'Võ Thành Công', CAST(N'2001-03-03' AS Date), N'Cát Chánh', N'0352033022', N'cong@gmail.com', CAST(N'2022-01-04' AS Date), 1, 2, N'qlbanhang3')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (4, N'Nguyễn Phước Sinh', CAST(N'2001-04-04' AS Date), N'Cát Nhơn', N'0365523654', N'sinh@gmail.com', CAST(N'2022-02-02' AS Date), 1, 1, N'qlkho4')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (5, N'Nguyễn Minh Trọng', CAST(N'2001-01-01' AS Date), N'Cát Chánh', N'0352230023', N'trong@gmail.com', CAST(N'2022-03-03' AS Date), 1, 1, N'qlkho3')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (7, N'sd', CAST(N'2002-01-01' AS Date), N'sd', N'sd', N'sd', CAST(N'2332-01-01' AS Date), 1, 2, N'admin')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (10, N'Lê Văn An', CAST(N'2001-04-12' AS Date), N'Cát Thắng', N'0325563256', N'an@gmail.com', CAST(N'2022-04-21' AS Date), 1, 2, N'qlbanhang4')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (11, N'Minh', CAST(N'2001-12-25' AS Date), N'Q3', N'0352233033', N'nhat@gmail.com', CAST(N'2022-04-22' AS Date), 0, 1, N'qlkho5')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (14, N'cvvc', CAST(N'2022-05-17' AS Date), N'cv', N'cv', N'cv', CAST(N'2022-05-12' AS Date), 1, 2, N'qlbanhang4')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (15, N'duy', CAST(N'2001-05-01' AS Date), N'Q1', N'0352233033', N'duy@gmail.com', CAST(N'2022-05-16' AS Date), 0, 2, N'qlbanhang')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [NamSinh], [DiaChi], [SDT], [Email], [NgayVaoLamViec], [DaXoa], [MaLoaiNV], [TenDangNhap]) VALUES (16, N'Tuyên', CAST(N'2001-09-04' AS Date), N'Bình Định', N'0394420076', N'nguyenanhtuyen@gmail.com', CAST(N'2022-05-19' AS Date), 0, 1, N'qlkho8')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [DaXoa]) VALUES (1, N'Apple Inc', N'Apple Inc. là một tập đoàn công nghệ đa quốc gia của Mỹ có trụ sở chính tại Cupertino, California, chuyên thiết kế, phát triển và bán thiết bị điện tử tiêu dùng, phần mềm máy tính và các dịch vụ trực tuyến', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [DaXoa]) VALUES (2, N'OPPO Electronics Corp', N'OPPO Electronics Corp là nhà sản xuất thiết bị điện tử, điện thoại di động Android Trung Quốc, có trụ sở đặt tại Đông Hoản, Quảng Đông, công ty con của tập đoàn điện tử BBK Electronics. OPPO cung cấp một số sản phẩm chính như máy nghe nhạc MP3, eBook, DVD/Blu-ray và điện thoại thông minh.', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [DaXoa]) VALUES (3, N'Xiaomi Inc', N'Xiaomi là tập đoàn công nghệ của Trung Quốc, có trụ sở tại Bắc Kinh. Thương hiệu này được xem là Apple của Trung Quốc, chỉ sau 5 năm thành lập, Xiaomi đã trở thành nhà sản xuất smartphone có thị phần đứng thứ 5 thế giới và đứng thứ 1 tại thị trường trong nước (năm 2015).', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [DaXoa]) VALUES (4, N'Vivo Inc', N'Vivo là một công ty Trung Quốc chuyên thiết kế, phát triển và sản xuất điện thoại thông minh Android, phụ kiện điện thoại thông minh, phần mềm và dịch vụ trực tuyến. Vivo được thành lập năm 2009 tại Đông Hoản, Quảng Đông, và là công ty con của tập đoàn BBK Electronics.', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [DaXoa]) VALUES (5, N'Samsung Electronics', N'Công ty Trách nhiệm hữu hạn Điện tử Samsung là một công ty điện tử đa quốc gia của Hàn Quốc có trụ sở chính được đặt tại thành phố Suwon, tỉnh Gyeonggi. Đây là công ty con hàng đầu trong cơ cấu tổ chức của tập đoàn Samsung và đã trở thành công ty công nghệ lớn nhất trên thế giới tính theo doanh thu kể từ năm 2009.', 0)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [DaXoa]) VALUES (6, N'df', N'df', 1)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [DaXoa]) VALUES (7, N'', N'', 1)
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [DaXoa]) VALUES (8, N'Sony Inc', N'Công ty công nghiệp Sony, gọi tắt là SONY, là một tập đoàn đa quốc gia của Nhật Bản, với trụ sở chính nằm tại Minato, Tokyo, Nhật Bản, và là tập đoàn điện tử đứng thứ 5 thế giới với 81,64 tỉ USD.', 0)
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (1, CAST(N'2022-03-26' AS Date), 0, 11, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (4, CAST(N'2022-02-02' AS Date), 0, 11, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (7, CAST(N'2222-02-02' AS Date), 1, 2, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (8, CAST(N'2022-04-02' AS Date), 1, 1, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (9, CAST(N'2022-04-08' AS Date), 0, 11, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (10, CAST(N'2022-04-29' AS Date), 1, 2, 2)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (11, CAST(N'2022-04-29' AS Date), 1, 3, 2)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (12, CAST(N'2022-04-29' AS Date), 1, 2, 3)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (14, CAST(N'2022-05-12' AS Date), 1, 11, 4)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (15, CAST(N'2022-05-12' AS Date), 1, 1, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (16, CAST(N'2022-05-12' AS Date), 1, 1, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (17, CAST(N'2022-04-01' AS Date), 0, 11, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (20, CAST(N'2022-08-05' AS Date), 1, 1, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (23, CAST(N'2022-04-15' AS Date), 0, 11, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (24, CAST(N'1970-01-01' AS Date), 1, 1, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (25, CAST(N'2022-05-04' AS Date), 1, 1, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (26, CAST(N'2022-04-08' AS Date), 0, 11, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (27, CAST(N'2022-05-01' AS Date), 1, 1, 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [DaXoa], [MaNV], [MaNCC]) VALUES (28, CAST(N'2022-05-20' AS Date), 1, 15, 2)
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (1, N'Iphone7 Plus', 5500000, CAST(N'2022-04-12' AS Date), N'Màn hình: LED-backlit IPS LCD, Retina HD
Hệ điều hành: IOS 14
Camera sau: 2 camera 12 MP
Camera trước: 7 MP
Chip: Apple A10 Fusion
Ram: 3GB
Bộ nhớ trong: 32 GB
SIM: 1 Nano SIM, hỗ trợ 4G
Pin, sạc: 2900 mAh', N'F:\javadoan\source code\images\products\iphone\iphone7plus.jpg', 11, 0, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (2, N'Oppo A95', 6990000, CAST(N'2022-04-10' AS Date), N'Màn hình: AMOLED, Full HD
Hệ điều hành: Android 11
Camera sau: Chính 48 MP & phụ 2 MP, 2 MP
Camera trước: 16 MP
Chip: Snapdragon 662
Ram: 8GB
Bộ nhớ trong: 128 GB
SIM: 2 Nano SIM, hỗ trợ 4G
Pin, sạc: 5000 mAh, 33W', N'F:\javadoan\source code\images\products\oppo\oppoa95.jpg', 10, 0, 3, 2, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (10, N'iphone 11 pro', 18500000, CAST(N'1970-01-01' AS Date), N'Tốt', N'', 10, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (11, N'sd', 1, CAST(N'1970-01-01' AS Date), N'ư', N'', 1, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (12, N'bvb', 1, CAST(N'1970-01-01' AS Date), N't', N'', 1, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (13, N's', 1, CAST(N'2022-01-01' AS Date), N'f', N'', 1, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (14, N'Oppo A55', 4990000, CAST(N'2022-04-21' AS Date), N'Màn hình: IPS LCD, HD+
Hệ điều hành: Android 11
Camera sau: Chính 50 MP & phụ 2 MP, 2 MP
Camera trước: 16 MP
Chip: Media Tek Helio G35
Ram: 4GB
Bộ nhớ trong: 64 GB
SIM: 2 Nano SIM, Hỗ trợ 4G
Pin, sạc: 5000 mAh, 18 W', N'F:\javadoan\source code\images\products\oppo\oppoA55.png', 50, 0, 3, 2, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (17, N'dvdv', 12, CAST(N'2050-12-12' AS Date), N'ưew', N'F:\javadoan\source code\images\newsp.png', 1, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (18, N'Iphone8 Plus', 6490000, CAST(N'2022-04-21' AS Date), N'Màn hình: LED-backlit IPS LCD, Retina HD
Hệ điều hành: IOS 14
Camera sau: 2 camera 12 MP
Camera trước: 7 MP
Chip: Apple A10 Fusion
Ram: 3GB
Bộ nhớ trong: 64 GB
SIM: 1 Nano SIM, hỗ trợ 4G
Pin, sạc: 2900 mAh', N'F:\javadoan\source code\images\products\iphone\iphone8plus.jpg', 20, 0, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (19, N'Iphone11 Pro Max', 15990000, CAST(N'2022-04-25' AS Date), N'Màn hình: OLED, Super Retina XDR
Hệ điều hành: IOS 14
Camera sau: 3 camera 12 MP
Camera trước: 12 MP
Chip: Apple A13 Blonic
RAM: 4 GB
Bộ nhớ trong: 64 GB
SIM: 1 Nano SIM & eSIM, hỗ trợ 4G
Pin, sạc: 3969 mAh', N'F:\javadoan\source code\images\products\iphone\iphone11promax.jpg', 5, 0, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (20, N'Xiaomi 11T 5G', 9490000, CAST(N'2022-04-26' AS Date), N'Màn hình: AMOLED, 6.67", Full HD
Hệ điều hành: Android 11
Camera sau: Chính 108 MP & phụ 8 MP, 5 MP
Camera trước: 16 MP
Chip: Media Tek Dimensity 1200
RAM: 8 GB
Bộ nhớ trong: 256 GB
SIM: 2 Nano SIM, hỗ trợ 5G
Pin, sạc: 5000 mAh, 67 W', N'F:\javadoan\source code\images\products\xiaomi\xiaomi11t5G.jpg', 10, 0, 4, 3, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (21, N'Redmi Note 11', 5490000, CAST(N'2022-04-26' AS Date), N'Màn hình: AMOLED, 6.43", Full HD
Hệ điều hành: Android 11
Camera sau: Chính 50 MP & phụ 8 MP, 2 MP, 2 MP
Camera trước: 13 MP
Chip: Snapdragon 680
RAM: 6 GB
Bộ nhớ trong: 128 GB
SIM: 2 Nano SIM, hỗ trợ 4G
Pin, sạc: 5000 mAh, 33 W', N'F:\javadoan\source code\images\products\xiaomi\redminote11.jpg', 20, 0, 4, 3, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (22, N'Redmi Note 10', 4490000, CAST(N'2022-04-26' AS Date), N'Màn hình: AMOLED, 6.43", Full HD
Hệ điều hành: Android 11
Camera sau: Chính 48 MP & phụ 8 MP, 2 MP, 2 MP
Camera trước: 13 MP
Chip: Snapdragon 678
RAM: 6 GB
Bộ nhớ trong: 128 GB
SIM: 2 Nano SIM, hỗ trợ 4G
Pin, sạc: 5000 mAh, 33 W', N'F:\javadoan\source code\images\products\xiaomi\redminote10.jpg', 10, 0, 4, 3, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (23, N'Oppo Reno7', 10490000, CAST(N'2022-04-26' AS Date), N'Màn hình: AMOLED, 6.43", Full HD+
Hệ điều hành: Android 11
Camera sau: Chính 64 MP & phụ 2 MP, 2 MP
Camera trước: 16 MP
Chip: Snapdragon 695 5G
Ram: 8 GB
Bộ nhớ trong: 128 GB
SIM: 2 Nano SIM, Hỗ trợ 5G
Pin, sạc: 4500 mAh, 33 W', N'F:\javadoan\source code\images\products\oppo\opporeno7.jpg', 30, 0, 3, 2, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (24, N'Oppo Reno6 5G', 12990000, CAST(N'2022-04-26' AS Date), N'Màn hình: AMOLED, 6.43", Full HD+
Hệ điều hành: Android 11
Camera sau: Chính 64 MP & phụ 8 MP, 2 MP
Camera trước: 32 MP
Chip: MediaTek Dimensity 900 5G
Ram: 8 GB
Bộ nhớ trong: 128 GB
SIM: 2 Nano SIM, Hỗ trợ 5G
Pin, sạc: 4300 mAh, 65 W', N'F:\javadoan\source code\images\products\oppo\opporeno6.jpg', 10, 0, 3, 2, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (25, N'Iphone13 Pro ', 29490000, CAST(N'2022-05-12' AS Date), N'Màn hình: OLED, 6.1", Super Retina XDR
Hệ điều hành: IOS 15
Camera sau: 3 camera 12 MP
Camera trước: 12 MP
Chip: Apple A15 Blonic
RAM: 6 GB
Bộ nhớ trong: 128 GB
SIM: 1 Nano SIM & 1 eSIM, hỗ trợ 5G
Pin, sạc: 3095 mAh, 20 W', N'F:\javadoan\source code\images\products\iphone\iphone13pro.jpg', 10, 0, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (26, N'df', 12, CAST(N'2022-05-31' AS Date), N'sd', N'', 0, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (27, N't', 2, CAST(N'2022-05-24' AS Date), N't', N't', 0, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (28, N'y', 1, CAST(N'2022-05-04' AS Date), N'sd', N'sd', 2, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (29, N'ê', 1, CAST(N'2022-05-02' AS Date), N'sd', N'sd', 0, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (30, N'sd', 1, CAST(N'2022-05-11' AS Date), N'1', N'1', 0, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (31, N'sd', 2, CAST(N'2022-05-12' AS Date), N'sd', N'sd', 4, 1, 1, 1, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [MoTa], [HinhAnh], [SLTon], [DaXoa], [MaLoaiSP], [MaNCC], [MaNSX]) VALUES (32, N'Iphone 12', 19190000, CAST(N'2022-05-20' AS Date), N'Màn hình: OLED, 6.1", Super Retina XDR
Hệ điều hành: iOS 15
Camera sau: 2 camera 12 MP
Camera trước: 12 MP
Chip: Apple A14 Bionic
Ram: 4 GB
Bộ nhớ trong: 64 GB
SIM: 1 Nano SIM & 1 eSIM, Hỗ trợ 5G
Pin, sạc: 2815 mAh, 20 W', N'F:\javadoan\source code\images\products\iphone\iphone12.jpg', 0, 0, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'admin', N'123', 0, NULL)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlbanhang', N'123', 0, 2)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlbanhang2', N'123', 0, 2)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlbanhang3', N'123', 0, 2)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlbanhang4', N'123', 0, 2)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlbanhang5', N'123', 0, 2)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlbanhang6', N'123', 0, 2)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho', N'123', 0, 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho2', N'123', 0, 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho3', N'456', 0, 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho4', N'456', 0, 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho5', N'12', 0, 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho6', N'123', 1, 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho7', N'123', 0, 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho8', N'456', 0, 1)
INSERT [dbo].[TaiKhoan] ([TenDangNhap], [MatKhau], [DaXoa], [MaLoaiTK]) VALUES (N'qlkho9', N'123', 1, 1)
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_LoaiNhanVien] FOREIGN KEY([MaLoaiNV])
REFERENCES [dbo].[LoaiNhanVien] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_LoaiNhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[TaiKhoan] ([TenDangNhap])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham1] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham1]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap1] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap1]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat1] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat1]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan] FOREIGN KEY([MaLoaiTK])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTK])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan]
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoChiTietDonDatHang]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoChiTietDonDatHang]
as
select MaCTDDH 'Mã ctddh', TenSP 'Sản phẩm', SoLuong 'sl', ThanhTien 'Thành tiền', UuDai 'Ưu đãi', TongThanhToan 'Tổng'
from ChiTietDonDatHang ddh, SanPham sp
where ddh.MaSP = sp.MaSP and ddh.DaXoa=0
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoChiTietDonDatHangTheoMaDonDatHang]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoChiTietDonDatHangTheoMaDonDatHang]
@maDDH int
as
select MaCTDDH "Mã chi tiết đơn hàng", TenSP "Sản phẩm", SoLuong "Số lượng", 
ThanhTien "Thành tiền", UuDai "Ưu đãi", TongThanhToan "Tổng thanh toán"
from DonDatHang ddh, ChiTietDonDatHang ctddh, SanPham sp
where ddh.MaDDH = ctddh.MaDDH and ctddh.MaSP = sp.MaSP and ctddh.DaXoa=0 and ctddh.MaDDH = @maDDH
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoChiTietPhieuNhap]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoChiTietPhieuNhap]
as
select MaCTPN "Mã chi tiết phiếu nhập", ctpn.MaPN "Mã phiếu nhập", TenSP "Sản phẩm", SoLuong "Số lượng"
from PhieuNhap pn, ChiTietPhieuNhap ctpn, SanPham sp
where pn.MaPN = ctpn.MaPN and ctpn.MaSP = sp.MaSP and ctpn.DaXoa=0
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoChiTietPhieuNhapTheoMaPhieuNhap]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoChiTietPhieuNhapTheoMaPhieuNhap]
@maPN int
as
select MaCTPN "Mã chi tiết phiếu nhập", ctpn.MaPN "Mã phiếu nhập", TenSP "Sản phẩm", SoLuong "Số lượng"
from PhieuNhap pn, ChiTietPhieuNhap ctpn, SanPham sp
where pn.MaPN = ctpn.MaPN and ctpn.MaSP = sp.MaSP and ctpn.DaXoa=0 and pn.MaPN=@maPN
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoDonDatHang]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoDonDatHang]
as
select MaDDH "Mã đơn hàng", TenKH "Khách hàng", NgayDat "Ngày đặt hàng", NgayGiao "Ngày giao hàng"
from DonDatHang ddh, KhachHang kh
where ddh.MaKH = kh.MaKH and ddh.DaXoa=0
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoDonDatHangTheoMaKhachHang]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoDonDatHangTheoMaKhachHang]
@maKH int
as
select MaDDH "Mã đơn hàng", TenKH "Khách hàng", NgayDat "Ngày đặt hàng", NgayGiao "Ngày giao hàng"
from DonDatHang ddh, KhachHang kh
where ddh.MaKH = kh.MaKH and ddh.DaXoa=0 and ddh.MaKH = @maKH
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoNhanVien]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoNhanVien]
as
select MaNV "Mã nhân viên", TenNV "Tên nhân viên", NamSinh "Năm sinh", DiaChi "Địa chỉ",
SDT "Số điện thoại", Email "Email", NgayVaoLamViec "Ngày vào làm việc", TenLoaiNV "Bộ phận",
TenDangNhap "Tài khoản"
from NhanVien nv, LoaiNhanVien lnv
where nv.MaLoaiNV = lnv.MaLoaiNV and nv.DaXoa=0
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoNhanVienTheoBoPhan]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoNhanVienTheoBoPhan]
@maBP int
as
select MaNV "Mã nhân viên", TenNV "Tên nhân viên", NamSinh "Năm sinh", DiaChi "Địa chỉ",
SDT "Số điện thoại", Email "Email", NgayVaoLamViec "Ngày vào làm việc", TenLoaiNV "Bộ phận",
TenDangNhap "Tài khoản"
from NhanVien nv, LoaiNhanVien lnv
where nv.MaLoaiNV = lnv.MaLoaiNV and nv.DaXoa=0 and nv.MaLoaiNV = @maBP
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoNhanVienTheoTaiKhoan]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[HienThiToanBoNhanVienTheoTaiKhoan]
@taiKhoan varchar(30)
as
select MaNV "Mã nhân viên", TenNV "Tên nhân viên", NamSinh "Năm sinh", DiaChi "Địa chỉ",
SDT "Số điện thoại", Email "Email", NgayVaoLamViec "Ngày vào làm việc", TenLoaiNV "Bộ phận",
TenDangNhap "Tài khoản"
from NhanVien nv, LoaiNhanVien lnv
where nv.MaLoaiNV = lnv.MaLoaiNV and nv.DaXoa=0 and nv.TenDangNhap = @taiKhoan
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoPhieuNhap]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[HienThiToanBoPhieuNhap]
as
select MaPN "Mã phiếu", NgayNhap "Ngày lập", TenNV "Tên nhân viên", TenNCC "Nhà cung cấp"
from PhieuNhap pn, NhanVien nv, NhaCungCap ncc
where pn.MaNV = nv.MaNV and pn.MaNCC = ncc.MaNCC and pn.DaXoa=0
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoPhieuNhapTheoMaNhaCungCap]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoPhieuNhapTheoMaNhaCungCap]
@maNCC int
as 
select MaPN "Mã phiếu", NgayNhap "Ngày lập", TenNV "Tên nhân viên", TenNCC "Nhà cung cấp"
from PhieuNhap pn, NhanVien nv, NhaCungCap ncc
where pn.MaNV = nv.MaNV and pn.MaNCC = ncc.MaNCC and pn.DaXoa=0 and pn.MaNCC=@maNCC
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoPhieuNhapTheoMaNhanVien]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoPhieuNhapTheoMaNhanVien]
@maNV int
as 
select MaPN "Mã phiếu", NgayNhap "Ngày lập", TenNV "Tên nhân viên", TenNCC "Nhà cung cấp"
from PhieuNhap pn, NhanVien nv, NhaCungCap ncc
where pn.MaNV = nv.MaNV and pn.MaNCC = ncc.MaNCC and pn.DaXoa=0 and pn.MaNV=@maNV
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachTaiKhoanTheoMaLoaiTaiKhoan]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LayDanhSachTaiKhoanTheoMaLoaiTaiKhoan]
@maLoaiTK int
as
select * from TaiKhoan where MaLoaiTK = @maLoaiTK
GO
/****** Object:  StoredProcedure [dbo].[LayDiaChiHinhAnhTheoMaSanPham]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LayDiaChiHinhAnhTheoMaSanPham]
@maSP int
as
select HinhAnh from SanPham where MaSP=@maSP
GO
/****** Object:  StoredProcedure [dbo].[LayDiaChiHinhAnhTheoTenSanPham]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LayDiaChiHinhAnhTheoTenSanPham]
@tenSP varchar(100)
as
select HinhAnh from SanPham where TenSP=@tenSP
GO
/****** Object:  StoredProcedure [dbo].[Test]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Test]
@ten nvarchar(100)
as
select MaPN 'Mã phiếu nhập', NgayNhap 'Ngày nhập', TenNV 'Nhân viên', TenNCC 'Nhà cung cấp'
from PhieuNhap pn, NhanVien nv, NhaCungCap ncc
where pn.MaNV = nv.MaNV and pn.MaNCC = ncc.MaNCC and pn.DaXoa=0 and 
nv.TenNV like '%'+@ten+'%'
GO
/****** Object:  StoredProcedure [dbo].[ThongKeDoanhThuTheoNgay]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThongKeDoanhThuTheoNgay]
as
select NgayDat "Ngày", sum(TongThanhToan) "Số tiền thu được"
from DonDatHang ddh, ChiTietDonDatHang ct
where ddh.MaDDH = ct.MaDDH
group by NgayDat
GO
/****** Object:  StoredProcedure [dbo].[ThongKeDoanhThuTheoThang]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ThongKeDoanhThuTheoThang]
@nam int
as
select MONTH(NgayDat) "Tháng", sum(TongThanhToan) "Số tiền thu được"
from DonDatHang ddh, ChiTietDonDatHang ct
where ddh.MaDDH = ct.MaDDH and YEAR(NgayDat)=@nam
group by MONTH(NgayDat)
GO
/****** Object:  StoredProcedure [dbo].[TimKiemChiTietDonDatHangTheoTenSanPham]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TimKiemChiTietDonDatHangTheoTenSanPham]
@tenSP nvarchar(200)
as
select MaCTDDH 'mã ctddh', TenSP 'sp', SoLuong 'sl', ThanhTien 'Thành tiền', UuDai 'Ưu đãi', TongThanhToan 'Tổng thanh toán'
from ChiTietDonDatHang ctddh, SanPham sp
where ctddh.MaSP = sp.MaSP and ctddh.DaXoa=0 and sp.TenSP like '%'+@tenSP+'%'
GO
/****** Object:  StoredProcedure [dbo].[TimKiemChiTietPhieuNhapTheoTenSanPham]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TimKiemChiTietPhieuNhapTheoTenSanPham]
@tenSP varchar(100)
as
select MaCTPN 'ctpn', ctpn.MaPN 'pn', TenSP 'sp', SoLuong 'sl'
from ChiTietPhieuNhap ctpn, PhieuNhap pn, SanPham sp
where ctpn.MaPN = pn.MaPN and ctpn.MaSP = sp.MaSP and ctpn.DaXoa=0 and sp.TenSP like '%'+@tenSP+'%'
GO
/****** Object:  StoredProcedure [dbo].[TimKiemDonDatHangTheoTenKhachHang]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TimKiemDonDatHangTheoTenKhachHang]
@tenKH nvarchar(200)
as
select MaDDH 'mã đơn hàng', TenKH 'khách hàng', NgayDat 'Ngày đặt', NgayGiao 'Ngày giao'
from DonDatHang ddh, KhachHang kh
where ddh.MaKH = kh.MaKH and ddh.DaXoa=0 and kh.TenKH like '%'+@tenKH+'%'
GO
/****** Object:  StoredProcedure [dbo].[TimKiemKhachHangTheoSDT]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TimKiemKhachHangTheoSDT]
@sdt varchar(11)
as
select * from KhachHang
where DaXoa=0 and SDT like '%'+@sdt+'%'
GO
/****** Object:  StoredProcedure [dbo].[TimKiemKhachHangTheoTen]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TimKiemKhachHangTheoTen]
@tenKH nvarchar(200)
as
select * from KhachHang
where DaXoa=0 and TenKH like '%'+@tenKH+'%'
GO
/****** Object:  StoredProcedure [dbo].[TimKiemLoaiSanPhamTheoTenLoai]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[TimKiemLoaiSanPhamTheoTenLoai]
@tenLoai varchar(100)
as
select * from LoaiSanPham
where DaXoa=0 and TenLoaiSP like '%'+@tenLoai+'%'
GO
/****** Object:  StoredProcedure [dbo].[TimKiemNhaCungCapTheoTen]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TimKiemNhaCungCapTheoTen]
@tenNCC nvarchar(200)
as
select * from NhaCungCap
where DaXoa=0 and TenNCC like '%'+@tenNCC+'%'
GO
/****** Object:  StoredProcedure [dbo].[TimKiemNhanVienTheoTen]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TimKiemNhanVienTheoTen]
@tenNV nvarchar(200)
as
select MaNV 'mã nv', TenNV 'tên nv', NamSinh 'ns', DiaChi 'dc', SDT 'sdt', Email 'email',
NgayVaoLamViec 'ngay vào làm việc', TenLoaiNV 'Bộ phận', nv.TenDangNhap 'Tài khoản'
from NhanVien nv, LoaiNhanVien lnv, TaiKhoan tk
where nv.MaLoaiNV = lnv.MaLoaiNV and nv.TenDangNhap = tk.TenDangNhap and nv.DaXoa=0 and nv.TenNV like '%'+@tenNV+'%'
GO
/****** Object:  StoredProcedure [dbo].[TimKiemNhaSanXuatTheoTen]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TimKiemNhaSanXuatTheoTen]
@tenNSX nvarchar(200)
as
select * from NhaSanXuat
where DaXoa=0 and TenNSX like '%'+@tenNSX+'%'
GO
/****** Object:  StoredProcedure [dbo].[TimKiemPhieuNhapTheoNgayNhap]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TimKiemPhieuNhapTheoNgayNhap]
@ngayNhap varchar(100)
as
select MaPN 'mã pn', NgayNhap 'Ngày nhập', TenNV 'Nhân viên', TenNCC 'Nhà cung cấp'
from PhieuNhap pn, NhanVien nv, NhaCungCap ncc
where pn.MaNV = nv.MaNV and pn.MaNCC = ncc.MaNCC and pn.DaXoa=0 and pn.NgayNhap like '%'+@ngayNhap+'%'
GO
/****** Object:  StoredProcedure [dbo].[TimKiemSanPhamTheoTenSanPham]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TimKiemSanPhamTheoTenSanPham]
@tenSP varchar(100)
as
select * from SanPham
where DaXoa=0 and TenSP like '%'+@tenSP+'%'
GO
/****** Object:  StoredProcedure [dbo].[TimKiemTaiKhoanTheoTenDangNhap]    Script Date: 23/05/2022 8:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TimKiemTaiKhoanTheoTenDangNhap]
@tenDangNhap varchar(100)
as
select * from TaiKhoan
where DaXoa=0 and TenDangNhap like '%'+@tenDangNhap+'%'
GO
