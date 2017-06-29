using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using VCFramework.Entidad;
using VCFramework.NegocioMySql;
using System.Web.Http.Cors;
using Newtonsoft.Json;
using System.Xml;
using System.Net.Http.Formatting;
using Newtonsoft.Json.Linq;
using System.IO;
using System.Text;
using System.Web;

namespace WebApplication1.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class FotoController : ApiController
    {
        const string UploadDirectory = "~/Fotos/";
        const string UploadDirectoryImg = "~/img/";
        [System.Web.Http.AcceptVerbs("POST")]
        public HttpResponseMessage CreateContestEntry()
        {

            VCFramework.Entidad.TicInst entidad = new VCFramework.Entidad.TicInst();
            HttpResponseMessage httpResponse = new HttpResponseMessage();
            try
            {
                var httpPostedFile = HttpContext.Current.Request.Files["UploadedImage"];
                string proId = HttpContext.Current.Request.Form["ProId"];

                if (httpPostedFile != null)
                {
                    //guardamos el registro
                    #region tratamiento del archivo
                    string resultExtension = Path.GetExtension(httpPostedFile.FileName);
                    string resultFileName = Path.ChangeExtension(httpPostedFile.FileName, resultExtension);
                    string resultFileUrl = UploadDirectory + resultFileName;
                    string fechaSubida = DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToShortTimeString();
                    string urlExtension = "";
                    switch (resultExtension)
                    {
                        case ".jpg":
                        case ".jpeg":
                            urlExtension = UploadDirectoryImg + "jpeg.png";
                            break;
                        case ".gif":
                            urlExtension = UploadDirectoryImg + "gif.png";
                            break;
                        case ".png":
                            urlExtension = UploadDirectoryImg + "png.png";
                            break;
                        case ".doc":
                        case ".docx":
                            urlExtension = UploadDirectoryImg + "word.png";
                            break;
                        case ".xls":
                        case ".xlsx":
                            urlExtension = UploadDirectoryImg + "excel.png";
                            break;
                        case ".pdf":
                            urlExtension = UploadDirectoryImg + "pdf.png";
                            break;
                    }

                    string name = httpPostedFile.FileName;
                    long sizeInKilobytes = httpPostedFile.ContentLength / 1024;
                    string sizeText = sizeInKilobytes.ToString() + " KB";
                    #endregion

                    //guardamos el registro
                    #region guardado registro
                    //entidad.Borrado = false;
                    //entidad.Eliminado = 0;
                    //entidad.Id = 0;
                    //entidad.ProId = int.Parse(proId);
                    //entidad.Modificado = false;
                    //entidad.RutaArchivo = httpPostedFile.FileName;
                    //entidad.Nuevo = true;
                    //entidad.Url = "";
                    //int respuesta = VCFramework.NegocioMySQL.ArchivosProyecto.Insertar(entidad);

                    #endregion

                    var fileSavePath = Path.Combine(HttpContext.Current.Server.MapPath("~/Fotos"), httpPostedFile.FileName);

                    httpPostedFile.SaveAs(fileSavePath);
                }

                httpResponse = new HttpResponseMessage(HttpStatusCode.OK);
                String JSON = JsonConvert.SerializeObject(entidad);
                httpResponse.Content = new StringContent(JSON);
                httpResponse.Content.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue(VCFramework.NegocioMySql.Utiles.JSON_DOCTYPE);


            }
            catch (Exception ex)
            {
                httpResponse = new HttpResponseMessage(HttpStatusCode.ExpectationFailed);
                throw ex;
            }
            return httpResponse;


        }

    }
}