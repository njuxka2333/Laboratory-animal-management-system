USE [Laboratory Animal Management System].
GO
/****** Object:  Table [dbo]. [Loan History]    Script Date: 2023/1/5 21:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loan Record] (
	[cage number] [int] NOT NULL,
	[Student] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Type of Default] [varchar](50) NULL,
 CONSTRAINT [PK_ LENDING RECORD] PRIMARY KEY CLUSTERED 
(
	[cage number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_ KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo]. [cage number and feeding record]    Script Date: 2023/1/5 21:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cage number and feeding log] (
	[cage number] [int] NOT NULL,
	[Room number] [int] NULL,
	[frame] [int] NULL,
	[line] [int] NULL,
	[column] [int] NULL,
	[whether to feed today] [varchar](30) NULL,
	[breeder] [varchar](30) NULL,
	[Supplier] [varchar](50) NULL,
	[purchase time] [int] NULL,
	[Purchase administrator in charge] [varchar](30) NULL,
 CONSTRAINT [PK_ cage number and feeding records] PRIMARY KEY CLUSTERED 
(
	[cage number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_ KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo]. [keeper attendance sheet]    Script Date: 2023/1/5 21:33:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Breeder Timesheet] (
	[Student No.] [varchar](30) NOT NULL,
	[forgot the number of times to feed] [int] NULL,
 CONSTRAINT [PK_ Keeper Timesheet] PRIMARY KEY CLUSTERED 
(
	[Student No.] ASC
)
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_ KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LOAN RECORD] ([CAGE NUMBER], [STUDENT], [DATE], [DEFAULT TYPE]) VALUES (1, N'Fan Shengwei', N'20230101', N'None').
INSERT [dbo].[LOAN RECORD] ([CAGE NUMBER], [STUDENT], [DATE], [DEFAULT TYPE]) VALUES (2, N'Li Xinyang', N'20230104', N'None')
INSERT [dbo].[LOAN RECORD] ([CAGE NUMBER], [STUDENT], [DATE], [DEFAULT TYPE]) VALUES (3, N'Bu Xinjie', N'20230104', N'None').
INSERT [dbo].[LOAN RECORD] ([CAGE NUMBER], [STUDENT], [DATE], [DEFAULT TYPE]) VALUES (4, N'Chen Sheng', N'20230104', N'None').
INSERT [dbo].[LOAN RECORD] ([CAGE NUMBER], [STUDENT], [DATE], [DEFAULT TYPE]) VALUES (5, N'Zhang Renjie', N'20230103', N'Warning').
INSERT [dbo].[LOAN RECORD] ([CAGE NUMBER], [STUDENT], [DATE], [DEFAULT TYPE]) VALUES (6, N'Dou Liyu', N'20230106', N'Cancel permission').
INSERT [dbo].[Loan Record] ([Cage Number], [Student], [Date], [Default Type]) VALUES (7, N'Qi Kaijie', N'20230105', N'Serious warning').
INSERT [dbo].[LOAN RECORD] ([CAGE NUMBER], [STUDENT], [DATE], [DEFAULT TYPE]) VALUES (8, N'Qi Kaijie', N'20230106', N'None').
INSERT [dbo].[LOAN RECORD] ([CAGE NUMBER], [STUDENT], [DATE], [DEFAULT TYPE]) VALUES (9, N'Bu Xinjie', N'20230105', N'None').
GO
INSERT [dbo].[cage number and feeding record] ([cage number], [room number], [shelf], [row], [column], [feeding today] , [Breeder], [Supplier], [Purchase Time], [Purchase Manager]) VALUES (1, 126, 1, 1, 1, N'is', N'Liang Qiong', N'Nuo Weizan', 20221224, N'Huang Yijie')).
INSERT [dbo].[cage number and feeding record] ([cage number], [room number], [shelf], [row], [column], [feeding today] , [Breeder], [Supplier], [Purchase Time], [Purchase Manager]) VALUES (2, 126, 2, 3, 1, N'No', N'Liang Qiong', N'Zhang's Pharmaceutical', 20221225, N'Huang Yijie').
INSERT [dbo].[cage number and feeding record] ([cage number], [room number], [shelf], [row], [column], [feeding today] , [Breeder], [Supplier], [Purchase Time], [Purchase Manager]) VALUES (3, 127, 1, 2, 1, N'Yes', N'Liang Qiong', N'Huawei Group', 20230101, N'Huang Yijie').
INSERT [dbo].[cage number and feeding record] ([cage number], [room number], [shelf], [row], [column], [feeding today] , [Breeder], [Supplier], [Purchase Time], [Purchase Manager]) VALUES (4, 127, 2, 2, 2, N'is', N'Liang Qiong', N'Nuo Weizan', 20230102, N'Huang Yijie').
INSERT [dbo].[cage number and feeding record] ([cage number], [room number], [shelf], [row], [column], [feeding today] , [Breeder], [Supplier], [Purchase Time], [Purchase Manager]) VALUES (5, 128, 1, 3, 1, N'is', N'Rossi', N'Nuovezan', 20221229, N'Hu Yueqi').
INSERT [dbo].[cage number and feeding record] ([cage number], [room number], [shelf], [row], [column], [feeding today] , [Breeder], [Supplier], [Purchase Time], [Purchase Manager]) VALUES (6, 128, 2, 3, 2, N'Yes', N'Rossi', N'Nuovezan', 20221228, N'Hu Yueqi')).
INSERT [dbo].[cage number and feeding record] ([cage number], [room number], [shelf], [row], [column], [feeding today] , [Breeder], [Supplier], [Purchase Time], [Purchase Manager]) VALUES (7, 129, 1, 1, 1, N'No', N'Lu' , N'Zhang's Medicine', 20221229, N'Hu Yueqi').
INSERT [dbo].[cage number and feeding record] ([cage number], [room number], [shelf], [row], [column], [feeding today] , [Breeder], [Supplier], [Purchase Time], [Purchase Manager]) VALUES (8, 129, 2, 1, 2, N'Yes', N'Lu Yuxiao', N'Zhang's Pharmaceutical', 20221220, N'Ji Xuyi').
INSERT [dbo].[cage number and feeding record] ([cage number], [room number], [shelf], [row], [column], [feeding today] , [Breeder], [Supplier], [Purchase Time], [Purchase Manager]) VALUES (9, 129, 3, 2, 1, N'Yes', N'Lu Yuxiao', N'Zhang's Pharmaceutical', 20230103, N'Ji Xuyi').
GO
INSERT [dbo].[Breeder Timesheet] ([Student Number], [Forgot Feeding Times]) VALUES (N'15098233', 0).
INSERT [dbo].[Breeder Timesheet] ([Student Number], [Forgot Feeding Times]) VALUES (N'16098022', 1).
INSERT [dbo].[Keeper Timesheet] ([Student Number], [Forgot Feeding Times]) VALUES (N'16098237', 3).
GO

USE [Laboratory Animal Management System]
GO
/****** Object:  Table [dbo]. [Animal Number]    Script Date: 2023/1/5 14:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo]. [Animal Number] (
	[Animal Number] [int] NOT NULL,
	[cage number] [int] NULL,
	[Status] [varchar] (50) NULL,
 CONSTRAINT [PK_ animal number] PRIMARY KEY CLUSTERED 
(
	[Animal Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo]. [Issues]    Script Date: 2023/1/5 14:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo]. [Issues] (
	[Research Group] [varchar] (50) NOT NULL,
	[Student No.] [varchar] (50) NOT NULL,
 CONSTRAINT [PK_ TOPIC] PRIMARY KEY CLUSTERED 
(
	[Research Group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo]. [Identity]    Script Date: 2023/1/5 14:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo]. [Identity] (
	[Student No.] [varchar] (50) NULL,
	[Name] [varchar] (20) NULL,
	[Identity] [varchar] (20) NULL,
	[Credit Score] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo]. [Student Project]    Script Date: 2023/1/5 14:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo]. [Student Project] (
	[Student] [varchar] (50) NOT NULL,
	[Research Group] [varchar] (50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo]. [Account Number]    Script Date: 2023/1/5 14:35:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo]. [Account Number] (
	[Student No.] [varchar] (50) NOT NULL,
	[Password] [varchar] (50) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220001, 1, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220002, 1, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220003, 1, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220004, 1, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220005, 1, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220006, 1, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220007, 1, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220008, 1, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220009, 2, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220010, 2, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220011, 2, N'OBESITY')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220012, 2, N'OBESITY')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220013, 2, N'OBESITY')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220014, 2, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220015, 2, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220016, 3, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220017, 3, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220018, 3, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220019, 3, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220020, 3, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220021, 3, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220022, 3, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220023, 4, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220024, 4, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220025, 4, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220026, 4, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220027, 4, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220028, 5, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220029, 5, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220030, 5, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220031, 5, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220032, 5, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220033, 5, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220034, 5, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220035, 6, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220036, 6, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220037, 6, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220038, 6, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220039, 7, N'pregnant')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220040, 7, N'pregnant')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220041, 7, N'pregnant')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220042, 7, N'pregnant')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220043, 8, N'SICK')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220044, 8, N'SICK')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220045, 9, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220046, 9, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220047, 9, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220048, 9, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220049, 9, N'NORMAL')
INSERT [dbo]. [Animal Number] ([Animal Number], [Cage Number], [Status]) VALUES (220050, 9, N'NORMAL')
GO
INSERT [dbo]. [Issues] ([Research Group], [Student Worker Number]) VALUES (N'M3', N'10002')
INSERT [dbo]. [Issues] ([Research Group], [Student Worker Number]) VALUES (N'Animal behavior', N'10004')
INSERT [dbo]. [Issues] ([Research Group], [Student Worker Number]) VALUES (N'Biochem', N'10005')
INSERT [dbo]. [Issues] ([Research Group], [Student Worker Number]) VALUES (N'Biomedical', N'10003')
GO
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505001', N'Zhang Renjie', N'Student', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505002', N'Wu Shengwei', N'Student', 18)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505003', N'Maleonn', N'Student', 19)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505004', N'Qi Kaijie', N'STUDENT', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505005', N'Cao Fengling', N'Student', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505006', N'Kim Jiayi', N'STUDENT', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505007', N'Bu Xinjie', N'Student', 5)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505008', N'Jiang Yixuan', N'Student', 18)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505009', N'Li Xinyang', N'Student', 18)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505010', N'Cai Wenhui', N'Student', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505011', N'Chen Sheng', N'Student', 10)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505012', N'Wuguang', N'Student', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505013', N'Single Fangfang', N'Student', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505014', N'Dou Liyu', N'Student', 2)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505015', N'Fan Shengwei', N'Student', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505016', N'Gu Xinyi', N'Student', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'211505017', N'Han Shuojie', N'STUDENT', 19)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'50503987265', N'Huang Yijie', N'admin', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'50400056748', N'Hu Yueqi', N'Admin', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'50500389728', N'Ji Xuyi', N'Admin', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'15098233', N'Liang Qiong', N'Breeder', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'16098022', N'Rossi', N'Breeder', 19)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'16098237', N'Lu Yuxiao', N'Breeder', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'10001', N'Chenyu Zhang', N'Senior Management', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'10002', N'Zhu Jingning', N'Teacher', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'10003', N'Wu Xinxing', N'Teacher', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'10004', N'Chen Jiangning', N'Teacher', 20)
INSERT [dbo]. [Identity] ([Student Number], [Name], [Identity], [Credit Score]) VALUES (N'10005', N'Yang Rongwu', N'Teacher', 20)
GO
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505001', N'M3')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505002', N'M3')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505003', N'M3')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505004', N'Biopharma')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505005', N'Biopharma')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505006', N'Biopharma')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505007', N'Biopharma')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505008', N'Biopharma')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505009', N'Biopharma')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505010', N'Animal Behavior')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505011', N'Animal Behavior')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505012', N'ANIMAL BEHAVIOR')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505013', N'Biochem')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505014', N'Biochem')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505015', N'Biochem ')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505016', N'Biochem')
INSERT [dbo]. [Student Project] ([Student], [Research Group]) VALUES (N'211505017', N'Biochem')
GO
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505001', N'So2WpkoC7iarmJ86eU')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505002', N'NULLG9B*GcqsYC^BwQ3bcf')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505003', N'njuanimal1220')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505004', N'labm3boss')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'50503987265', N'studentcc@nju')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'50400056748', N'skdjjkhj454')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505005', N'from1to100uououo')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505006', N'fightinged2323')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505007', N'databasedi20@; ')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505008', N'lovebiochem1009')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505009', N'eded382education')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505010', N'sdsueueu298h')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505011', N'2837977487@qq')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505012', N'sjdnxm789223')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505013', N'sdj293jhkjh23hb')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505014', N'sjkdj234hjk')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505015', N'skjdfhnj23904njk')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505016', N'2389jsn3nm,s43')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'211505017', N'239084jkbsnvmjk')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'50500389728', N'priorlover2389')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'15098233', N'skljdfklj234')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'16098022', N'38sf29jksn,''')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'16098237', N'2398sknbvsm')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'10001', N'excellent66')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'10002', N'sjehjk34523')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'10003', N'293jskhnjk2n')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'10004', N'sfjh23jn,sjgkl')
INSERT [dbo]. [Account Number] ([Student Number], [Password]) VALUES (N'10005', N'si3hmn,jkh2')
GO
