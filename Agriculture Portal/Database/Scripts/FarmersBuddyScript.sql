USE [FarmersBuddy]
GO
/****** Object:  Table [dbo].[tbl_AgriculturalOfficerMaster]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_AgriculturalOfficerMaster](
	[OfficerId] [int] IDENTITY(900501,1) NOT NULL,
	[FName] [varchar](50) NULL,
	[MName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[DOR] [datetime] NULL,
	[Address] [varchar](500) NULL,
	[EmailId] [varchar](50) NULL,
	[PhoneNo] [varchar](50) NULL,
	[Photo] [varbinary](max) NULL,
	[ImageFile] [varchar](50) NULL,
	[Experience] [varchar](50) NULL,
	[Remarks] [varchar](500) NULL,
 CONSTRAINT [PK_tbl_AgriculturalOfficerMaster] PRIMARY KEY CLUSTERED 
(
	[OfficerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_StudentMaster]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_StudentMaster](
	[StudentId] [int] IDENTITY(500601,1) NOT NULL,
	[FName] [varchar](50) NULL,
	[MName] [varchar](50) NULL,
	[LName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[DOR] [datetime] NULL,
	[Address] [varchar](500) NULL,
	[EmailId] [varchar](50) NULL,
	[PhoneNo] [varchar](50) NULL,
	[Photo] [varbinary](max) NULL,
	[ImageFile] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_StudentMaster] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_LoginMaster]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_LoginMaster](
	[UserId] [int] IDENTITY(1000,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Std_Agr_Id] [int] NULL,
	[Status] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_LoginMaster] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertZonalDeatils]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_InsertZonalDeatils]
(@ZoneName varchar(50),
@Districts varchar(500),
@HeadQuarters varchar(50),
@GeographicalArea varchar(50),
@NoOfMandals int,
@NoOfRegions int)
as
Begin
Insert into tbl_AgricultureZones (ZoneName,Districts,HeadQuarters,GeographicalArea,
NoOfMandals,NoOfRegions)values
(@ZoneName,@Districts ,@HeadQuarters ,@GeographicalArea ,@NoOfMandals ,@NoOfRegions )
end
GO
/****** Object:  Table [dbo].[tbl_AgricultureZones]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_AgricultureZones](
	[ZoneId] [int] IDENTITY(1,1) NOT NULL,
	[ZoneName] [varchar](50) NULL,
	[Districts] [varchar](500) NULL,
	[HeadQuarters] [varchar](50) NULL,
	[GeographicalArea] [varchar](50) NULL,
	[NoOfMandals] [int] NULL,
	[NoOfRegions] [int] NULL,
 CONSTRAINT [PK_tbl_AgricultureZones] PRIMARY KEY CLUSTERED 
(
	[ZoneId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertGovtLoanDetails]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_InsertGovtLoanDetails]
(@LoanName varchar(100),
@Objective varchar(500),
@Coverage varchar(2000),
@Eligibility varchar(500),
@Terms varchar(2000),
@Repayment varchar(100),
@ROI varchar(50),
@Others varchar(2500),
@LoanFileContent varbinary(max),
@FileName varchar(50))
as
Begin
Insert into tbl_GovtLoans(LoanName,Objective,Coverage,Eligibility,Terms,RepaymentSchedule,RateOfInterest,
Others,LoanFileContent,FileName)values
(@LoanName ,@Objective ,@Coverage ,@Eligibility ,@Terms ,@Repayment ,@ROI ,@Others ,
@LoanFileContent ,@FileName )
end
GO
/****** Object:  Table [dbo].[tbl_GovtLoans]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_GovtLoans](
	[LoanId] [int] IDENTITY(2001,1) NOT NULL,
	[LoanName] [varchar](100) NULL,
	[Objective] [varchar](500) NULL,
	[Coverage] [varchar](2000) NULL,
	[Eligibility] [varchar](500) NULL,
	[Terms] [varchar](2000) NULL,
	[RepaymentSchedule] [varchar](1000) NULL,
	[RateOfInterest] [varchar](50) NULL,
	[Others] [varchar](2500) NULL,
	[LoanFileContent] [varbinary](max) NULL,
	[FileName] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_GovtLoans] PRIMARY KEY CLUSTERED 
(
	[LoanId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_InsuranceDetails]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_InsuranceDetails](
	[InsuranceId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[Type] [varchar](50) NULL,
	[Objective] [varchar](4000) NULL,
	[Eligibility] [varchar](4000) NULL,
	[ApplyProcedure] [varchar](4000) NULL,
	[DateOfStart] [varchar](2000) NULL,
	[Others] [varchar](4000) NULL,
	[AddressForContact] [varchar](2000) NULL,
 CONSTRAINT [PK_tbl_InsuranceDetails] PRIMARY KEY CLUSTERED 
(
	[InsuranceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_NewArticles]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_NewArticles](
	[ArticleId] [int] IDENTITY(10,1) NOT NULL,
	[TitleOfArticle] [varchar](100) NULL,
	[ContentOfArticle] [varbinary](max) NULL,
	[FileName] [varchar](50) NULL,
	[CreatedDate] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_NewArticles] PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCropTypes]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_InsertCropTypes]
(@TypeName varchar(100),
@Description varchar(2000))
as
Begin
Declare @b varchar(50)
Declare @a varchar(50)
set @b=(Select max(CropTypeId) from tbl_CropTypes)
if @b is null
begin
set @a='CRP'+(Select Convert(varchar(50),1101))
end
else
begin
set @a=(Select substring(@b,4,6))
set @a=@a+1
set @a='CRP'+@a
end
Insert into tbl_CropTypes (CropTypeId,TypeName,Description)Values
(@a,@TypeName,@Description)
end
GO
/****** Object:  Table [dbo].[tbl_CropTypes]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_CropTypes](
	[CropTypeId] [varchar](50) NOT NULL,
	[TypeName] [varchar](100) NULL,
	[Description] [varchar](2000) NULL,
 CONSTRAINT [PK_tbl_CropTypes] PRIMARY KEY CLUSTERED 
(
	[CropTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_CropDetails]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_CropDetails](
	[CropId] [int] IDENTITY(1,1) NOT NULL,
	[CropName] [varchar](100) NULL,
	[Climate] [varchar](2500) NULL,
	[Soil] [varchar](3000) NULL,
	[Rotation] [varchar](2500) NULL,
	[Irrigation] [varchar](3000) NULL,
	[Yield] [varchar](4000) NULL,
	[Storage] [varchar](4500) NULL,
	[CropTypeId] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_CropDetails] PRIMARY KEY CLUSTERED 
(
	[CropId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_MarketPrices]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_MarketPrices](
	[MarketId] [int] IDENTITY(1,1) NOT NULL,
	[MarketName] [varchar](50) NULL,
	[District] [varchar](50) NULL,
	[Commodity] [varchar](100) NULL,
	[Variety] [varchar](100) NULL,
	[Quantity] [varchar](50) NULL,
	[MinPrice] [int] NULL,
	[MaxPrice] [int] NULL,
	[ModelPrice] [int] NULL,
	[DateOfReg] [datetime] NULL,
 CONSTRAINT [PK_tbl_MarketPrices] PRIMARY KEY CLUSTERED 
(
	[MarketId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_GovtSchemes]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_GovtSchemes](
	[SchemeId] [int] IDENTITY(1,1) NOT NULL,
	[SchemeName] [varchar](50) NULL,
	[Objective] [varchar](2500) NULL,
	[Eligibility] [varchar](5000) NULL,
	[Beneficiaries] [varchar](2500) NULL,
	[Benefits] [varchar](2000) NULL,
	[ContactDetails] [varchar](1000) NULL,
	[GovtOrderNo] [varchar](50) NULL,
	[DateOfReg] [datetime] NULL,
 CONSTRAINT [PK_tbl_GovtSchemes] PRIMARY KEY CLUSTERED 
(
	[SchemeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertAnswers]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_InsertAnswers]
(@Answer varchar(2500),
@QuestionId int,
@UserId int)
as
Begin
If not exists (select AnswerId from tbl_Answers where QuestionId=@QuestionId and UserId=@UserId)
begin
Insert into tbl_Answers(Answer,QuestionId,UserId,DateOfAnswer)Values
(@Answer,@QuestionId,@UserId,convert(varchar(50),getdate(),103))
end
end
GO
/****** Object:  Table [dbo].[tbl_EmailDetails]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_EmailDetails](
	[EmailId] [int] NULL,
	[EmailReciptedId] [int] NULL,
	[EmailReadStatus] [bit] NULL,
	[EmailDeleteStatus] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_EmailMaster]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_EmailMaster](
	[EmailId] [int] IDENTITY(10001,1) NOT NULL,
	[EmailSenderId] [int] NULL,
	[EmailDate] [datetime] NULL,
	[EmailSubjectText] [varchar](50) NULL,
	[EmailBodyMsg] [varchar](500) NULL,
	[EmailAttachFileContent] [varbinary](max) NULL,
	[EmailAttachFileName] [varchar](50) NULL,
	[EmailDeleteStatus] [bit] NULL,
	[EmailReadStatus] [bit] NULL,
 CONSTRAINT [PK_tbl_EmailMaster] PRIMARY KEY CLUSTERED 
(
	[EmailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_OfficerOnLine]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_OfficerOnLine](
	[OfficerId] [int] NULL,
	[Status] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_StudentOnLine]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_StudentOnLine](
	[StudentId] [int] NULL,
	[Status] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_OnlineTrainingSchedule]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_OnlineTrainingSchedule](
	[ScheduleId] [varchar](50) NOT NULL,
	[Title] [varchar](500) NULL,
	[ArrangedDate] [datetime] NULL,
	[Duration] [varchar](50) NULL,
	[Description] [varchar](1000) NULL,
	[TrainingVideo] [varbinary](max) NULL,
	[VideoFileName] [varchar](50) NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_tbl_OnlineTrainingSchedule] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Answers]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Answers](
	[AnswerId] [int] IDENTITY(1,1) NOT NULL,
	[Answer] [varchar](2500) NULL,
	[QuestionId] [int] NULL,
	[UserId] [int] NULL,
	[DateOfAnswer] [datetime] NULL,
 CONSTRAINT [PK_tbl_Answers] PRIMARY KEY CLUSTERED 
(
	[AnswerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Questions]    Script Date: 10/02/2009 11:41:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Questions](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[Question] [varchar](4000) NULL,
	[UserId] [int] NULL,
	[PostedDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_Questions] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_GetOfficerInfoForOnlineTraining]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetOfficerInfoForOnlineTraining]
(@ScheduleId varchar(50))
as
Begin
Declare @UserId int
set @UserId=(Select UserId from tbl_OnlineTrainingSchedule where ScheduleId=@ScheduleId)
Declare @OfficerId int
Set @OfficerId=(Select Std_Agr_Id from tbl_LoginMaster Where UserId=@UserId)
Select * from tbl_AgriculturalOfficerMaster where OfficerId=@OfficerId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOfficerMaster]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[sp_InsertOfficerMaster]  
 (  
 @FName varchar(50)  
, @MName varchar(50)  
, @LName varchar(50)  
, @DOB datetime 
, @Address varchar(200)  
, @EmailId varchar(40)  
, @PhoneNo varchar(20)  
, @ImageContent varbinary(max)  
, @ImageFile varchar(50),  
   @UserName varchar(50),  
 @Password varchar(40),  
@Experience varchar(50),
 @Out varchar(150) output  
,@OfficerId int out
)  
AS  
begin  
if not exists(select UserId from tbl_LoginMaster where UserName=@UserName )  
begin  
INSERT INTO tbl_AgriculturalOfficerMaster(
   
 FName , MName  , LName  , DOB,DOR    , [Address]  , EmailId  , PhoneNo  , Photo  , ImageFile,Experience,Remarks  )  
VALUES (  
   
 @FName  
, @MName  
, @LName  
, @DOB,
getdate()
, @Address  
, @EmailId  
, @PhoneNo  
, @ImageContent  
, @ImageFile ,
@Experience,
'Not Applicable' 
)  
  
set @OfficerId=(select ident_current('tbl_AgriculturalOfficerMaster'))  
insert into tbl_LoginMaster (UserName,Password,Std_Agr_Id,[Status],[Role])  
values  
(  
@UserName,@Password,@OfficerId,'Pending','Officer'  
)  
set @out='Your Registration Completed.'  
end  
else  
 begin  
  set @out='Given Username used by another user.Choose another.'  
 end  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateOfficerProfile]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PRocedure [dbo].[sp_UpdateOfficerProfile]
(@OfficerId int,
@FName varchar(50),
@MName varchar(50),
@LName varchar(50),
@Address varchar(50),
@PhoneNo varchar(50),
@EmailId varchar(50),
@Photo varbinary(max),
@ImageFile varchar(50))
as
Begin
Update tbl_AgriculturalOfficerMaster set FName=@FName,
MName=@MName,LName=@LName,Address=@Address,PhoneNo=@PhoneNo,
EmailId=@EmailId,Photo=@Photo,ImageFile=@ImageFile Where OfficerId=@OfficerId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetOffierProfile]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PRocedure [dbo].[sp_GetOffierProfile]
(@OfficerId int)
as 
begin
select * from tbl_AgriculturalOfficerMaster where OfficerId=@OfficerId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetImage]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_GetImage]
(@Str_Agr_Id int)
as 
Begin
If exists (Select OfficerId from tbl_AgriculturalOfficerMaster Where OfficerId=@Str_Agr_Id)
begin
Select OfficerId,FName,Photo,ImageFile from tbl_AgriculturalOfficerMaster where OfficerId=@Str_Agr_Id
end

If Exists (Select StudentId from tbl_StudentMaster Where StudentId=@Str_Agr_Id)
begin
Select StudentId,FName,Photo,ImageFile from tbl_StudentMaster where StudentId=@Str_Agr_Id
end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetOnlineStudentData]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_GetOnlineStudentData]
as
begin
select UserName as [Online Students] from tbl_LoginMaster where Std_Agr_Id in(select StudentId from tbl_StudentOnline where [status]=1)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetStudentProfile]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PRocedure [dbo].[sp_GetStudentProfile]
(@StudentId int)
as 
begin
select * from tbl_StudentMaster where StudentId=@StudentId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateStudentProfile]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PRocedure [dbo].[sp_UpdateStudentProfile]
(@StudentId int,
@FName varchar(50),
@MName varchar(50),
@LName varchar(50),
@Address varchar(50),
@PhoneNo varchar(50),
@EmailId varchar(50),
@Photo varbinary(max),
@ImageFile varchar(50))
as
Begin
Update tbl_StudentMaster set FName=@FName,
MName=@MName,LName=@LName,Address=@Address,PhoneNo=@PhoneNo,
EmailId=@EmailId,Photo=@Photo,ImageFile=@ImageFile Where StudentId=@StudentId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertStudentMaster]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertStudentMaster]  
 (  
 @FName varchar(50)  
, @MName varchar(50)  
, @LName varchar(50)  
, @DOB datetime 
, @Address varchar(200)  
, @EmailId varchar(40)  
, @PhoneNo varchar(20)  
, @ImageContent varbinary(max)  
, @ImageFile varchar(50),  
   @UserName varchar(50),  
 @Password varchar(40),  
 @Out varchar(150) output  
,@StdId int out
)  
AS  
begin  
if not exists(select UserId from tbl_LoginMaster where UserName=@UserName )  
begin  
INSERT INTO dbo.tbl_StudentMaster (  
   
 FName , MName  , LName  , DOB,DOR    , [Address]  , EmailId  , PhoneNo  , Photo  , ImageFile  )  
VALUES (  
   
 @FName  
, @MName  
, @LName  
, @DOB,
getdate()
, @Address  
, @EmailId  
, @PhoneNo  
, @ImageContent  
, @ImageFile  
)  

  
set @StdId=(select ident_current('tbl_StudentMaster'))  
insert into tbl_LoginMaster (UserName,Password,Std_Agr_Id,[Status],[Role])  
values  
(  
@UserName,@Password,@StdId,'Pending','student'  
)  
set @out='Your Registration Completed.'  
end  
else  
 begin  
  set @out='Given Username used by another user.Choose another.'  
 end  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetQuestions]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetQuestions]
as
Begin
select q.questionid, q.question,l.Std_Agr_Id,s.Photo,s.ImageFile,S.FName
from tbl_Questions q,tbl_LoginMaster l,tbl_StudentMaster s
where q.UserId=l.UserId and l.Std_Agr_Id=s.StudentId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetOnlineFacultyData]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_GetOnlineFacultyData]
as
begin
select UserName as [Online Faculties] from tbl_LoginMaster where Std_Agr_Id in(select OfficerId from tbl_OfficerOnline where [status]=1)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_outboxdetails]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_outboxdetails](@senderid int)      
as       
begin      
      
select  e.username,f.EMailReadStatus,f.EmailDeletestatus,f.Emailid,convert( varchar (50), f.Emaildate,103)as Date ,f.EmailSubjectText,f.EMailBodyMsg      
 from tbl_LoginMaster e inner join tbl_EmailDetails d on d.EmailReciptedId=e.Std_Agr_Id      
inner join tbl_emailmaster f on f.emailid=d.emailid where f.emailsenderid=@senderid  
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetNewRegisterPersons]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetNewRegisterPersons]
as
begin
select * from tbl_LoginMaster Where Status='Pending'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AcceptRegistration]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_AcceptRegistration]
(@Std_Agr_Id int)
as
Begin
Update  tbl_LoginMaster set Status='Accept'  Where std_agr_id=@Std_Agr_Id
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_VerifyUserLogin]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_VerifyUserLogin]
	(
	@UserName varchar(50),
	@Password varchar(50),
	@Std_Agr_Id int output,
	@Flag int output,
	@Role varchar(50) output
	)
AS
	declare @founduser varchar(50)
	select @founduser=UserName from tbl_LoginMaster where UserName=@UserName and password =@password
	if @founduser is not null
	begin
	set @Std_Agr_Id=(Select Std_Agr_Id from tbl_LoginMaster where UserName=@UserName and Password=@password)
	set @Role=(Select Role from tbl_LoginMaster where UserName=@UserName and Password=@password)
	set @Flag= 0--User Exists
return
	end
--	else
--	begin
--	set @Flag= 3--User Not Exists
--return
--	end

	if exists(select UserName from tbl_LoginMaster where UserName=@UserName)
begin
	set @Flag=2--Password Wrong
	set @Role='null'
	set @Std_Agr_Id=0
	
return
end
	else
begin
	set @Flag= 1--UserName Wrong
	set @Role='null'
	set @Std_Agr_Id=0
return
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_Inboxdetailshows]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_Inboxdetailshows](@Receptedid int)            
as             
begin            
select  e.username,f.EMailReadStatus,f.EmailDeletestatus,d.Emailid,convert( varchar (50), d.Emaildate,103)as Date ,d.EmailSubjectText,d.EMailBodyMsg        
 from tbl_LoginMaster e inner join tbl_emailmaster d on d.EmailSenderId=e.Std_Agr_Id        
inner join  tbl_EmailDetails f on f.emailid=d.emailid where f.EmailReciptedId =@Receptedid 
      
end
GO
/****** Object:  StoredProcedure [dbo].[SP_AdminEmailiddesplay]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SP_AdminEmailiddesplay]
as
begin
Select Username+'@FarmersBuddy.com' as UserName,Std_Agr_Id from tbl_LoginMaster where 
role='Admin'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetOfficerMailsId]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_GetOfficerMailsId]
as
begin
Select Username+'@FarmersBuddy.com' as UserName,Std_Agr_Id from tbl_LoginMaster where 
role='Officer'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLoginUserId]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetLoginUserId]
(@Std_Agr_Id int)
as
Begin
Select UserId from tbl_LoginMaster Where Std_Agr_Id=@Std_Agr_Id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_ShowStudentMailId]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[SP_ShowStudentMailId]
as
begin
Select Username+'@FarmersBuddy.com' as UserName,Std_Agr_Id from tbl_LoginMaster where 
role='Student'
end
GO
/****** Object:  StoredProcedure [dbo].[sp_PostNewArticles]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_PostNewArticles]
(@Title varchar(100),
@Content varbinary(max),
@FileName varchar(50))
as
Begin
Insert into tbl_NewArticles(TitleOfArticle,ContentOfArticle,[FileName],
CreatedDate,[Status])values(@Title,@Content,@FileName,convert(varchar(50),getdate(),103),'Not Applicable')
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPostedArticles]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetPostedArticles]
as
begin
Select * from tbl_NewArticles
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetGovtLoanDetails]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetGovtLoanDetails]
(@LoanId int)
as
Begin
Select * from tbl_GovtLoans where LoanId=@LoanId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsuranceDetailsById]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_InsuranceDetailsById]
(@InsuranceId int)
as
Begin
Select * from tbl_InsuranceDetails where InsuranceId=@InsuranceId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertInsuranceDetails]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_InsertInsuranceDetails]
(@Title varchar(100),
@Type varchar(50),
@Objective varchar(4000),
@Eligibility varchar(500),
@ApplyProcedure varchar(4000),
@DateOfStart varchar(2000),
@Others varchar(4000),
@Address varchar(2000))
as
Begin
Insert into tbl_InsuranceDetails(Title,Type,Objective,Eligibility,ApplyProcedure,DateOfStart,Others,AddressForContact)values
(@Title ,@Type,@Objective ,@Eligibility ,@ApplyProcedure,@DateOfStart,@Others,@Address)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCropTypes]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetCropTypes]
as
begin
Select * from tbl_CropTypes
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertCropDetails]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_InsertCropDetails]
(@CropName varchar(100),
@Climate varchar(2500),
@Soil varchar(3000),
@Rotation varchar(2500),	
@Irrigation varchar(3000),
@Yield varchar(4000),
@Storage varchar(4500),
@CropTypeId varchar(50))
as
Begin
Insert into tbl_CropDetails(CropName,Climate,Soil,Rotation,Irrigation,Yield,Storage,
CroptypeId)Values(@CropName,@Climate,@Soil,@Rotation,@Irrigation,@Yield,@Storage,@CropTypeId)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GerCropNames]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PRocedure [dbo].[sp_GerCropNames]
(@CropTypeId varchar(50))
as
Begin
Select CropName,CropId from tbl_CropDetails where CropTypeId=@CropTypeId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetCropInformation]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetCropInformation]
(@CropId int)
as
Begin
select * from tbl_CropDetails where CropId=@CropId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertMarketPrices]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_InsertMarketPrices]
(@MarketName varchar(50),
@District varchar(50),
@Commodity varchar(100),
@Variety varchar(100),
@Quantity varchar(50),
@MinPrice int,
@MaxPrice int,
@ModelPrice int,
@DateOfReg datetime)
as
begin
Insert into tbl_MarketPrices(MarketName,District,Commodity,Variety,Quantity,MinPrice,
MaxPrice,ModelPrice,DateOfReg)Values(@MarketName,@District,@Commodity,@Variety,@Quantity,@MinPrice,
@MaxPrice,@ModelPrice,@DateOfReg)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertGovertnemtSchemes]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_InsertGovertnemtSchemes]
(@SchemeName varchar(50),
@Objective varchar(2500),
@Eligibility varchar(5000),
@Beneficiaries varchar(2500),
@Benefits varchar(2000),
@ContactDetails varchar(1000),
@GovtOrderNo varchar(50),
@DateOfReg datetime)
as
Begin
Insert into tbl_GovtSchemes(SchemeName,Objective,Eligibility,Beneficiaries,Benefits,
ContactDetails,GovtOrderNo,DateOfReg)Values(@SchemeName,@Objective,@Eligibility,@Beneficiaries,
@Benefits,@ContactDetails,@GovtOrderNo,@DateOfReg)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetGovtSchemeDetailsById]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[sp_GetGovtSchemeDetailsById]
(@SchemeId int)
as
Begin
select * from tbl_GovtSchemes where schemeId=@SchemeId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_PostQuestions]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_PostQuestions]
(@Question varchar(4000),
@UserId int)
as
Begin
Insert into tbl_Questions(Question,UserId,PostedDate)VALUES(@Question,@UserId,Convert(varchar(50),getdate(),103))
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetQuestion]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetQuestion]
(@QuestionId int)
as
begin
Select Question From tbl_Questions Where QuestionId=@QuestionId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetQuestionsByUserId]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetQuestionsByUserId]
(@UserId int)
as
Begin
Select * from tbl_Questions where UserId=@UserId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetPostedAnswersByQuestionId]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[sp_GetPostedAnswersByQuestionId]
(@QuestionId int)
as
Begin
Select * from tbl_Answers Where QuestionId=@QuestionId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetVideoFile]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetVideoFile]
(@ScheduleId varchar(50))
as
begin
Select ScheduleId,TrainingVideo,VideoFileName from tbl_OnlineTrainingSchedule
Where ScheduleId=@ScheduleId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetVideoName]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PRocedure [dbo].[sp_GetVideoName]
(@ScheduleId varchar(50))
as
Begin
Select Title ,Duration from tbl_OnlineTrainingSchedule where ScheduleId=@ScheduleId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertOnlineTrainingSchedule]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_InsertOnlineTrainingSchedule]
(@Title varchar(500),
@ArrangedDate datetime,
@Duration varchar(50),
@Description varchar(1000),
@TrainingVideo varbinary(max),
@VideoFileName varchar(50),
@UserId int)
as
Begin
Declare @b varchar(50)
Declare @a varchar(50)
set @b=(Select max(ScheduleId) from tbl_OnlineTrainingSchedule)
if @b is null
begin
set @a='SCH'+(Select Convert(varchar(50),1101))
end
else
begin
set @a=(Select substring(@b,4,6))
set @a=@a+1
set @a='SCH'+@a
end
Insert into tbl_OnlineTrainingSchedule values (@a,@Title,@ArrangedDate,@Duration,
@Description,@TrainingVideo,@VideoFileName,@UserId)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetScheduleDetails]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_GetScheduleDetails]
as
Begin
Select ScheduleId,Title,Convert(varchar(50),ArrangedDate,103) as ArrangedDate,
Duration,Description from tbl_OnlineTrainingSchedule
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetTrainingVideo]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sp_GetTrainingVideo]
as
Begin
Select ScheduleId,Title,Convert(varchar(50),ArrangedDate,103) as ArrangedDate
 from tbl_OnlineTrainingSchedule Where ArrangedDate=(Select Convert(varchar(50),getdate(),103))
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_EmailMaster_Insert]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_EmailMaster_Insert]
	@EmailSenderId int
,	@EmailSubjectText varchar(50)
,	@EMailBodyMsg varchar(500)
,	@EmailAttachFileContent varbinary (max)
,	@EmailAttachFileName varchar(50)
,   @EmailReciptedId int

AS
begin
declare @Emaildate datetime,@Emailid int

set @Emaildate=(select getdate())

if @EmailAttachFileContent is not null
begin
INSERT INTO dbo.tbl_EmailMaster (
	EmailSenderId
,	Emaildate
,	EmailSubjectText
,	EMailBodyMsg
,	EmailAttachFileContent
,	EmailAttachFileName
)
VALUES (
	@EmailSenderId
,	@Emaildate
,	@EmailSubjectText
,	@EMailBodyMsg
,	@EmailAttachFileContent
,	@EmailAttachFileName
)
set @Emailid=(select ident_current('tbl_EmailMaster'))
insert into tbl_EmailDetails(Emailid,EmailReciptedId)values(@Emailid,@EmailReciptedId)
end
else
begin
INSERT INTO dbo.tbl_EmailMaster (
	EmailSenderId
,	Emaildate
,	EmailSubjectText
,	EMailBodyMsg
,	EmailAttachFileName
)
VALUES (
	@EmailSenderId
,	@Emaildate
,	@EmailSubjectText
,	@EMailBodyMsg
,	@EmailAttachFileName
)
set @Emailid=(select ident_current('tbl_EmailMaster'))
insert into tbl_EmailDetails(Emailid,EmailReciptedId)values(@Emailid,@EmailReciptedId)
end

end
GO
/****** Object:  StoredProcedure [dbo].[Sp_ShowDetailsEmailidwise]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Sp_ShowDetailsEmailidwise](@Emailid int)  
as begin
update  tbl_EmailDetails set EMailReadStatus=1 where emailid=@Emailid 
select * from tbl_EmailMaster where emailid=@Emailid  
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_ShowDetailsEmailidwiseOutbox]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Sp_ShowDetailsEmailidwiseOutbox](@Emailid int)  
as begin
update  tbl_EmailMaster set EmailReadStatus=1 where emailid=@Emailid 
select * from tbl_EmailMaster where emailid=@Emailid  
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_ShowEmaildetailsOutbox]    Script Date: 10/02/2009 11:41:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Sp_ShowEmaildetailsOutbox](@Emailid int)
as 
begin
update tbl_emailmaster set emailreadstatus =1 where emailid=@Emailid
select * from tbl_emailmaster where emailid=@Emailid
end
GO
/****** Object:  ForeignKey [FK_tbl_Answers_tbl_Questions]    Script Date: 10/02/2009 11:41:36 ******/
ALTER TABLE [dbo].[tbl_Answers]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Answers_tbl_Questions] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_LoginMaster] ([UserId])
GO
ALTER TABLE [dbo].[tbl_Answers] CHECK CONSTRAINT [FK_tbl_Answers_tbl_Questions]
GO
/****** Object:  ForeignKey [FK_tbl_OfficerOnLine_tbl_AgriculturalOfficerMaster]    Script Date: 10/02/2009 11:41:36 ******/
ALTER TABLE [dbo].[tbl_OfficerOnLine]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OfficerOnLine_tbl_AgriculturalOfficerMaster] FOREIGN KEY([OfficerId])
REFERENCES [dbo].[tbl_AgriculturalOfficerMaster] ([OfficerId])
GO
ALTER TABLE [dbo].[tbl_OfficerOnLine] CHECK CONSTRAINT [FK_tbl_OfficerOnLine_tbl_AgriculturalOfficerMaster]
GO
/****** Object:  ForeignKey [FK_tbl_OnlineTrainingSchedule_tbl_LoginMaster]    Script Date: 10/02/2009 11:41:36 ******/
ALTER TABLE [dbo].[tbl_OnlineTrainingSchedule]  WITH CHECK ADD  CONSTRAINT [FK_tbl_OnlineTrainingSchedule_tbl_LoginMaster] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_LoginMaster] ([UserId])
GO
ALTER TABLE [dbo].[tbl_OnlineTrainingSchedule] CHECK CONSTRAINT [FK_tbl_OnlineTrainingSchedule_tbl_LoginMaster]
GO
/****** Object:  ForeignKey [FK_tbl_Questions_tbl_LoginMaster]    Script Date: 10/02/2009 11:41:36 ******/
ALTER TABLE [dbo].[tbl_Questions]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Questions_tbl_LoginMaster] FOREIGN KEY([UserId])
REFERENCES [dbo].[tbl_LoginMaster] ([UserId])
GO
ALTER TABLE [dbo].[tbl_Questions] CHECK CONSTRAINT [FK_tbl_Questions_tbl_LoginMaster]
GO
/****** Object:  ForeignKey [FK_tbl_StudentOnLine_tbl_StudentMaster]    Script Date: 10/02/2009 11:41:37 ******/
ALTER TABLE [dbo].[tbl_StudentOnLine]  WITH CHECK ADD  CONSTRAINT [FK_tbl_StudentOnLine_tbl_StudentMaster] FOREIGN KEY([StudentId])
REFERENCES [dbo].[tbl_StudentMaster] ([StudentId])
GO
ALTER TABLE [dbo].[tbl_StudentOnLine] CHECK CONSTRAINT [FK_tbl_StudentOnLine_tbl_StudentMaster]
GO
