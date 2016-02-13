<!-- #INCLUDE virtual="clsUpload.asp" -->

<%
    Dim objUpload 
    Dim strFile, strPath
    ' Instantiate Upload Class '
    Set objUpload = New clsUpload
    strFile = objUpload.Fields("File1").FileName
    strPath = "R:\upload\" & strFile
    ' Save the binary data to the file system '
    objUpload("File1").SaveAs strPath
    Set objUpload = Nothing

    Function CleanFileName(name)
        name = Replace(name, "\", "_")
        name = Replace(name, "/", "_")
        name = Replace(name, "?", "_")
        name = Replace(name, "*", "_")
        name = Replace(name, ":", "_")
        name = Replace(name, """", "_")
        name = Replace(name, "<", "_")
        name = Replace(name, ">", "_")
        name = Replace(name, "|", "_")
        return name
    End Function
%>
Upload success