IF EXISTS (SELECT 1 FROM dbo.SYSOBJECTS WHERE ID = OBJECT_ID(N'[dbo].[usp_sel_tbl_Qots]') 
	   AND OBJECTPROPERTY(ID, N'IsProcedure') = 1)
	DROP PROCEDURE [dbo].[usp_sel_tbl_Qots]
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
CREATE PROCEDURE [dbo].[usp_sel_tbl_Qots]
@Excellent INT output,
@VeryGood INT output,
@Good INT output, 
@Bad INT output,
@VeryPoor INT output
AS

BEGIN

	SET NOCOUNT ON

	/*Declaration and initialization*/
	set @Excellent = (select COUNT(Excellent) from tbl_Qots where Excellent = 1)
	/*cleaning*/
	select @Excellent
	set @VeryGood = (select COUNT(VeryGood) from tbl_Qots where VeryGood = 1)
	/*cleaning*/
	select @VeryGood

	set @Good = (select COUNT(Good) from tbl_Qots where Good = 1)
	/*cleaning*/
	select @Good

	set @Bad = (select COUNT(Bad) from tbl_Qots where Bad = 1)
	/*cleaning*/
	select @Bad

	set @VeryPoor = (select COUNT(VeryPoor) from tbl_Qots where VeryPoor = 1)
	/*cleaning*/
	select @VeryPoor
SET NOCOUNT OFF
END
GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
 
