IF EXISTS (SELECT 1 FROM dbo.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[usp_sel_tbl_StudentLoginForReport]') 
	   AND OBJECTPROPERTY(ID, N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].usp_sel_tbl_StudentLoginForReport
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
CREATE PROCEDURE [dbo].usp_sel_tbl_StudentLoginForReport

 @UserName         	nvarchar(90)	 = Null
,@Password		nvarchar(90)	 = Null
AS
BEGIN

	SET NOCOUNT ON

	/*Declaration and initialization*/

SELECT * FROM tbl_StudentLogin

SET NOCOUNT OFF
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

