


IF EXISTS (SELECT 1 FROM dbo.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[usp_ins_tbl_ConstHour]') 
	   AND OBJECTPROPERTY(ID, N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].usp_ins_tbl_ConstHour
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
CREATE PROCEDURE [dbo].[usp_ins_tbl_ConstHour]


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
	INSERT INTO tbl_ConstHour(
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

