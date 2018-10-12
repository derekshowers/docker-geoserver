<%@ Page Language="VB" %>
<%
If (Request.TotalBytes > 0) Then
  Dim p, jpg

  p=Request("imagedata")
  jpg=Convert.FromBase64String(p)

  ' add headers for download dialog-box
  Response.ContentType = "image/jpeg"
  Response.AddHeader ("Content-Disposition", "attachment; filename=" & Request.QueryString("name"))
  Response.BinaryWrite (jpg)
End If
%>