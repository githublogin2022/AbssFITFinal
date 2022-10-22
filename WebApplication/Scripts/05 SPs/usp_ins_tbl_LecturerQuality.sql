


IF EXISTS (SELECT 1 FROM dbo.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[usp_ins_tbl_LecturerQuality]') 
	   AND OBJECTPROPERTY(ID, N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].usp_ins_tbl_LecturerQuality
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
CREATE PROCEDURE [dbo].[usp_ins_tbl_LecturerQuality]
/*
Project Name     	:	
Procedure Name		:	[usp_ins_tbl_LecturerQuality]
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

@Excellent 		bit	 = Null
,@VeryGood			bit	 = Null
,@Good				bit	 = Null
,@Bad			bit	 = Null
,@VeryPoor	bit	 = Null

AS
BEGIN

	SET NOCOUNT ON

	/*Declaration and initialization*/

	DECLARE @intUniqueID INT
	/*sql code */	

BEGIN
	INSERT INTO tbl_LecturerQuality(
		Excellent
		,VeryGood
		,Good
		,Bad
		,VeryPoor
	)

	VALUES
	(
		@Excellent 		
		,@VeryGood		
		,@Good			
		,@Bad		
		,@VeryPoor		
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

