IF EXISTS (SELECT 1 FROM dbo.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[usp_sel_tbl_LecturerQuality]') 
	   AND OBJECTPROPERTY(ID, N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].[usp_sel_tbl_LecturerQuality]
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
CREATE PROCEDURE [dbo].[usp_sel_tbl_LecturerQuality]

AS

BEGIN
Declare @Excellent INT 
	SET NOCOUNT ON

	/*Declaration and initialization*/
	set @Excellent = (select COUNT(Excellent) from tbl_LecturerQuality)
	/*cleaning*/
	return @Excellent
SET NOCOUNT OFF
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
