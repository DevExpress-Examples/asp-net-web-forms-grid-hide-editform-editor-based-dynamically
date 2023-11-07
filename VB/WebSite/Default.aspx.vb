Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web

Partial Public Class _Default
	Inherits System.Web.UI.Page

	Protected Sub grid_CellEditorInitialize(ByVal sender As Object, ByVal e As ASPxGridViewEditorEventArgs)
		Dim gridView As ASPxGridView = DirectCast(sender, ASPxGridView)

		If Not gridView.IsNewRowEditing Then
			Dim keyValue As Int32 = CInt(Math.Truncate(gridView.GetRowValues(gridView.EditingRowVisibleIndex, New String() { gridView.KeyFieldName })))

			If e.Column.FieldName = "CategoryName" Then
				e.Editor.Visible = (keyValue Mod 2 = 0)
			End If
		End If
	End Sub
End Class


