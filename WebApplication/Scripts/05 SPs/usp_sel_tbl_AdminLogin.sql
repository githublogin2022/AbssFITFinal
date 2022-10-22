IF EXISTS (SELECT 1 FROM dbo.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[usp_sel_tbl_AdminLogin]') 
	   AND OBJECTPROPERTY(ID, N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].usp_sel_tbl_AdminLogin
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
CREATE PROCEDURE [dbo].usp_sel_tbl_AdminLogin

 @UserName         	nvarchar(90)	 = Null
,@Password		nvarchar(90)	 = Null
AS
BEGIN

	SET NOCOUNT ON

	/*Declaration and initialization*/

	IF EXISTS(SELECT 1 FROM tbl_AdminLogin where UserName = @UserName AND Password = @Password)
	BEGIN 
	select 1
	END
	ELSE
	BEGIN
	Select 0
	END
	/*cleaning*/

SET NOCOUNT OFF
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
