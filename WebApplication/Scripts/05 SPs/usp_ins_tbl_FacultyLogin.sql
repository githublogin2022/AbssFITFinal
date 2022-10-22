


IF EXISTS (SELECT 1 FROM dbo.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[usp_ins_tbl_FacultyLogin]') 
	   AND OBJECTPROPERTY(ID, N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].usp_ins_tbl_FacultyLogin
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
CREATE PROCEDURE [dbo].[usp_ins_tbl_FacultyLogin]

@UserName 		nvarchar(50)	 = Null
,@Password			nvarchar(50)	 = Null
,@Year				nvarchar(50)	 = Null
,@Branch			nvarchar(500)	 = Null
,@EmailAddress		nvarchar(50)	 = Null
,@Phone				nvarchar(50)	 = Null
AS
BEGIN

	SET NOCOUNT ON

	/*Declaration and initialization*/

	DECLARE @intUniqueID INT
	/*sql code */	

BEGIN
	INSERT INTO tbl_FacultyLogin(
		UserName
		,Password
		,Designation
		,Branch
		,Email
		,Phone
	)

	VALUES
	(
		@UserName 		
		,@Password		
		,@Year			
		,@Branch		
		,@EmailAddress	
		,@Phone			
	)


END


	/*cleaning*/

SET NOCOUNT OFF
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO