<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E256)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# GridView for ASP.NET Web Forms - How to hide an edit form editor based on a column value
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e256/)**
<!-- run online end -->

This example demonstrates how to hide an editor from the edit form dynamically.

![](grid-with-hidden-editor.png)

Use the `e.Editor.Visible` property in the [CellEditorInitialize](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxGridView.CellEditorInitialize) event handler to control an editor's visibility.

```
protected void grid_CellEditorInitialize(object sender, ASPxGridViewEditorEventArgs e) {
    ASPxGridView gridView = (ASPxGridView)sender;

    if (!gridView.IsNewRowEditing) {
        Int32 keyValue = (Int32)gridView.GetRowValues(gridView.EditingRowVisibleIndex, new String[] { gridView.KeyFieldName });

        if (e.Column.FieldName == "CategoryName")
            e.Editor.Visible = (keyValue % 2 == 0);
    }
}
```

## Files to Review

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))

## More Examples
* [Grid View for ASP.NET Web Forms - How to hide the EditForm editor and column caption programmatically](https://github.com/DevExpress-Examples/asp-net-web-forms-grid-hide-edit-form-editor-programmatically)
