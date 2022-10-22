IF EXISTS (SELECT 1 FROM dbo.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[usp_del_tbl_StudentLogin]') 
	   AND OBJECTPROPERTY(ID, N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].usp_del_tbl_StudentLogin
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
CREATE PROCEDURE [dbo].usp_del_tbl_StudentLogin

 @id	int	 = Null

AS
BEGIN

	SET NOCOUNT ON

	/*Declaration and initialization*/

	Delete from tbl_StudentLogin where id = @id
	/*cleaning*/

SET NOCOUNT OFF
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

