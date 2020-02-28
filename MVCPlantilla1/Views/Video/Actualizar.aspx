<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="~/Content/Site.css" rel="stylesheet" />
    <title>Registrar Video</title>
</head>
<body>
    
    <form action="/Video/Actualizar" method="post">
    <fieldset>
        <asp:Label Text="Clave" runat="server" />
        <input type="text" name="idVideo" />
        <br />
        <asp:Label Text="Titulo" runat="server" />
        <input type="text" name="titulo"  />
        <br />
        <asp:Label Text="Reproducciones" runat="server" />
        <input type="text" name="reproducciones" value=" " />
        <br />
        <asp:Label Text="URL" runat="server" />
        <input type="text" name="url"  />
        <br />
        <asp:Label Text="Creador" runat="server" />
        <input type="text" name="creador" />
        <br />
       <input type="submit" value="Actualizar" />
    </fieldset>
    </form>
</body>
</html>

