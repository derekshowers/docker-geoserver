<%@ Page Language="VB" %>
<%
If (Request.TotalBytes > 0) Then
  Dim p, png

  p=Request("imagedata")
  png=Convert.FromBase64String(p)

  ' add headers for download dialog-box
  Response.ContentType = "image/png"
  Response.AddHeader ("Content-Disposition", "attachment; filename=" & Request.QueryString("name"))
  Response.BinaryWrite (png)
End If
%>