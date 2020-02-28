<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="~/Content/Site.css" rel="stylesheet" />
    <title>Eliminar</title>
</head>
<body>
    <form action="Eliminar.aspx" method="post">
    
    <legend>Eliminar Video por reproducciones</legend>

        <fieldset>
            <asp:Label  Text="Numero de reproducciones" runat="server" />
            <br />
            <input type="text" name="reproducciones" />
            <br />
            <input type="submit"  value="Eliminar" />
        </fieldset>
    </form>
</body>
</html>
