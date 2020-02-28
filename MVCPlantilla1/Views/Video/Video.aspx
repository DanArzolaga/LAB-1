<%:@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>Video</title>
</head>
<body>
    <h1>MI LISTA DE VIDEOS</h1>
    hay <% : ((System.Data.DataTable)ViewData ["Video"]).Rows.Count %> videos
    <%
    foreach (System.Data.DataRow ren in ((System.Data.DaTable)ViewData["Video"]).Rows)
    { %>

    <p>  <% : ren["titulo"].ToString()   %>   </p>
    } %>
    
    <br />
</body>
</html>
