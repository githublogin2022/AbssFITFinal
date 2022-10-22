


IF EXISTS (SELECT 1 FROM dbo.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[usp_ins_tbl_StudentLogin]') 
	   AND OBJECTPROPERTY(ID, N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].usp_ins_tbl_StudentLogin
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
CREATE PROCEDURE [dbo].[usp_ins_tbl_StudentLogin]
/*
Project Name     	:	
Procedure Name		:	[usp_ins_tbl_StudentLogin]
Purpose          	:	
Description      	:	
i/p param.		:	
o/i param.		:
Assumptions      	:	None.
Dependencies     	:	None.
Author           	:	Vaijat K
Created          	:	18/11/2017
Reviewed         	:	
Revisions        	:	
*/

--@int INT

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
	INSERT INTO tbl_StudentLogin(
		UserName
		,Password
		,Year
		,Branch
		,EmailAddress
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

select * from tbl_StudentLogin