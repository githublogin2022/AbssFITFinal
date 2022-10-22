IF EXISTS (SELECT 1 FROM dbo.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[usp_sel_tbl_FacultyLogin]') 
	   AND OBJECTPROPERTY(ID, N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].usp_sel_tbl_FacultyLogin
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
CREATE PROCEDURE [dbo].usp_sel_tbl_FacultyLogin

 @UserName         	nvarchar(90)	 = Null
,@Password		nvarchar(90)	 = Null
AS
BEGIN

	SET NOCOUNT ON

	/*Declaration and initialization*/

	IF EXISTS(SELECT 1 FROM tbl_FacultyLogin where UserName = @UserName AND Password = @Password)
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

