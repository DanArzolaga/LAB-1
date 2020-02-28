using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;
using MvcPlantilla;
using System.Configuration;


namespace MvcPlantilla.Controllers
{
    public class VideoController : Controller
    {
        //
        // GET: /Video/

        public ActionResult Index()
        {
            //Consultar la informacion de la base de datos
           ViewData["Video"] = BaseHelper.ejecutarConsulta("Select * From VIDEO", CommandType.Text);            

            return View();
        }
            
        public ActionResult Registrar()
        {            
            return View();
           
        }
        [HttpPost]
        public ActionResult Registrar(int idVideo, string titulo, int reproducciones, string url, string creador)
        {
            //guardar los datos a sqlserver
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));

            parametros.Add(new SqlParameter("@titulo", titulo));

            parametros.Add(new SqlParameter("@reproducciones", reproducciones));

            parametros.Add(new SqlParameter("@url", url));

            parametros.Add(new SqlParameter("@creador", creador));

            BaseHelper.ejecutarSentencia("INSERT INTO VIDEO" +
                "VALUES(@idVideo, @titulo, @reproducciones, @url, @creador)", CommandType.Text, parametros);

            return View();
        }

        public ActionResult Eliminar()
        {
            return View();
            
        }
        [HttpPost]
        public ActionResult Eliminar(int idVideo)
        {
            //guardar los datos a sqlserver
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));

            BaseHelper.ejecutarSentencia("DELETE FROM VIDEO WHERE idVideo=@idVideo)", CommandType.Text, parametros);

            return View();
        }

        public ActionResult Actualizar()
        {
            return View();

        }
        [HttpPost]
        public ActionResult Actualizar(int idVideo, string titulo, int reproducciones, string url, string creador)
        {
            //guardar los datos a sqlserver
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idVideo", idVideo));

            parametros.Add(new SqlParameter("@titulo", titulo));

            parametros.Add(new SqlParameter("@reproducciones", reproducciones));

            parametros.Add(new SqlParameter("@url", url));

            parametros.Add(new SqlParameter("@creador", creador));

            BaseHelper.ejecutarSentencia("UPDATE FROM VIDEO" +
                "idVideo=@idVideo, titulo=@titulo, reproducciones=@reproducciones, url=@url, creador=@creador)", CommandType.Text, parametros);

            return View();
        }
        public ActionResult Eliminar2()
        {
            return View();

        }
        [HttpPost]
        public ActionResult Eliminar2(int reproducciones)
        {
            //guardar los datos a sqlserver
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@reproducciones", reproducciones));

            BaseHelper.ejecutarSentencia("DELETE FROM VIDEO WHERE reproducciones=@reproducciones)", CommandType.Text, parametros);

            return View();
        }



    }
}