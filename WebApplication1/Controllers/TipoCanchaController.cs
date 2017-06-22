using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using Newtonsoft.Json;
using System.Xml;
using System.Net.Http.Formatting;
using Newtonsoft.Json.Linq;
using VCFramework.Entidad;
using VCFramework.NegocioMySql;

namespace WebApplication1.Controllers
{
    [EnableCors(origins: "*", headers: "*", methods: "*")]
    public class TipoCanchaController : ApiController
    {
        [AcceptVerbs("OPTIONS")]
        public void Options()
        { }

        [System.Web.Http.AcceptVerbs("GET")]
        [HttpGet]
        public HttpResponseMessage Get([FromUri]string id)
        {

            int idBuscar = 0;
            if (id != null)
                idBuscar = int.Parse(id);

            HttpResponseMessage httpResponse = new HttpResponseMessage();
            try
            {
                List<VCFramework.Entidad.TipoCancha> tipos = new List<VCFramework.Entidad.TipoCancha>();
                if (idBuscar > 0)
                    tipos = VCFramework.Entidad.TipoCancha.ListarPorId(idBuscar);
                else
                    tipos = VCFramework.Entidad.TipoCancha.Listar();

                if (tipos != null)
                {
                    httpResponse = new HttpResponseMessage(HttpStatusCode.OK);
                    String JSON = JsonConvert.SerializeObject(tipos);
                    httpResponse.Content = new StringContent(JSON);
                    httpResponse.Content.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue(VCFramework.NegocioMySql.Utiles.JSON_DOCTYPE);
                }
                else
                {
                    httpResponse = new HttpResponseMessage(HttpStatusCode.NoContent);
                }

            }
            catch (Exception ex)
            {
                httpResponse = new HttpResponseMessage(HttpStatusCode.ExpectationFailed);
                throw ex;
            }
            return httpResponse;
        }

        [System.Web.Http.AcceptVerbs("GET")]
        [HttpGet]
        public HttpResponseMessage GetAll()
        {


            HttpResponseMessage httpResponse = new HttpResponseMessage();
            try
            {
                List<VCFramework.Entidad.TipoCancha> tipos = new List<VCFramework.Entidad.TipoCancha>();
                tipos = VCFramework.Entidad.TipoCancha.Listar();

                if (tipos != null)
                {
                    httpResponse = new HttpResponseMessage(HttpStatusCode.OK);
                    String JSON = JsonConvert.SerializeObject(tipos);
                    httpResponse.Content = new StringContent(JSON);
                    httpResponse.Content.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue(VCFramework.NegocioMySql.Utiles.JSON_DOCTYPE);
                }
                else
                {
                    httpResponse = new HttpResponseMessage(HttpStatusCode.NoContent);
                }

            }
            catch (Exception ex)
            {
                httpResponse = new HttpResponseMessage(HttpStatusCode.ExpectationFailed);
                throw ex;
            }
            return httpResponse;
        }

        [System.Web.Http.AcceptVerbs("POST")]
        public HttpResponseMessage Post(dynamic DynamicClass)
        {
            string Input = JsonConvert.SerializeObject(DynamicClass);

            dynamic data = JObject.Parse(Input);

            HttpResponseMessage httpResponse = new HttpResponseMessage();

            try
            {
                int nuevoId = 0;
                string id = data.Id;
                string nombre = data.Nombre;
                string tpsId = data.TpsId;
                string largo = data.Largo;
                string ancho = data.Ancho;
                string tipoMedida = data.TipoMedida;
                string cantidadJugadores = data.CantidadJugadores;
                string instId = data.InstId;
                int eliminado = 0;

                VCFramework.Entidad.TipoCancha tipoCancha = new VCFramework.Entidad.TipoCancha();
                tipoCancha.Id = int.Parse(id);
                tipoCancha.Ancho = int.Parse(ancho);
                tipoCancha.CantidadJugadores = int.Parse(cantidadJugadores);
                tipoCancha.Eliminado = eliminado;
                tipoCancha.InstId = int.Parse(instId);
                tipoCancha.Largo = int.Parse(largo);
                tipoCancha.Nombre = nombre;
                tipoCancha.TipoMedida = int.Parse(tipoMedida);
                tipoCancha.TpsId = int.Parse(tpsId);

                nuevoId = VCFramework.Entidad.TipoCancha.Actualizar(tipoCancha);

                if (nuevoId > 0)
                {
                    tipoCancha.Id = nuevoId;
                }

                httpResponse = new HttpResponseMessage(HttpStatusCode.OK);
                String JSON = JsonConvert.SerializeObject(tipoCancha);
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

        [System.Web.Http.AcceptVerbs("PUT")]
        public HttpResponseMessage Put(dynamic DynamicClass)
        {

            string Input = JsonConvert.SerializeObject(DynamicClass);

            dynamic data = JObject.Parse(Input);

            HttpResponseMessage httpResponse = new HttpResponseMessage();

            try
            {
                int nuevoId = 0;
                string nombre = data.Nombre;
                string tpsId = data.TpsId;
                string largo = data.Largo;
                string ancho = data.Ancho;
                string tipoMedida = data.TipoMedida;
                string cantidadJugadores = data.CantidadJugadores;
                string instId = data.InstId;
                int eliminado = 0;

                VCFramework.Entidad.TipoCancha tipoCancha = new VCFramework.Entidad.TipoCancha();
                tipoCancha.Ancho = int.Parse(ancho);
                tipoCancha.CantidadJugadores = int.Parse(cantidadJugadores);
                tipoCancha.Eliminado = eliminado;
                tipoCancha.InstId = int.Parse(instId);
                tipoCancha.Largo = int.Parse(largo);
                tipoCancha.Nombre = nombre;
                tipoCancha.TipoMedida = int.Parse(tipoMedida);
                tipoCancha.TpsId = int.Parse(tpsId);

                nuevoId = VCFramework.Entidad.TipoCancha.Insertar(tipoCancha);

                if (nuevoId > 0)
                {
                    tipoCancha.Id = nuevoId;
                }

                httpResponse = new HttpResponseMessage(HttpStatusCode.OK);
                String JSON = JsonConvert.SerializeObject(tipoCancha);
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