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
    public class CanchasController : ApiController
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
                List<VCFramework.Entidad.RlTicInst> canchas = new List<VCFramework.Entidad.RlTicInst>();
                if (idBuscar > 0)
                    canchas = VCFramework.Entidad.RlTicInst.ListarPorId(idBuscar);
                else
                    canchas = new List<VCFramework.Entidad.RlTicInst>();

                if (canchas != null)
                {
                    httpResponse = new HttpResponseMessage(HttpStatusCode.OK);
                    String JSON = JsonConvert.SerializeObject(canchas);
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
        public HttpResponseMessage GetAll([FromUri]string instId)
        {


            HttpResponseMessage httpResponse = new HttpResponseMessage();
            try
            {
                List<VCFramework.Entidad.RlTicInst> canchas = new List<VCFramework.Entidad.RlTicInst>();
                canchas = VCFramework.Entidad.RlTicInst.ListarPorInstId(int.Parse(instId));

                if (canchas != null)
                {
                    httpResponse = new HttpResponseMessage(HttpStatusCode.OK);
                    String JSON = JsonConvert.SerializeObject(canchas);
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
                string ticId = data.TicId;
                string fotoUno = data.FotoUno;
                string fotoDos = data.FotoDos;
                string fotoTres = data.FotoTres;
                string valorSegmento = data.ValorSegmento;
                string descuentoSegmento = data.DescuentoSegmento;
                string disciplina = data.Disciplina;
                string instId = data.InstId;
                int eliminado = 0;

                VCFramework.Entidad.RlTicInst cancha = new VCFramework.Entidad.RlTicInst();
                cancha.Id = int.Parse(id);
                cancha.Nombre = nombre;
                cancha.TicId = int.Parse(ticId);
                cancha.FotoUno = fotoUno;
                cancha.FotoDos = fotoDos;
                cancha.FotoTres = fotoTres;
                cancha.Eliminado = eliminado;
                cancha.InstId = int.Parse(instId);
                cancha.ValorSegmento = int.Parse(valorSegmento);
                cancha.DescuentoSegmento = int.Parse(descuentoSegmento);
                cancha.Disciplina = disciplina;

                nuevoId = VCFramework.Entidad.RlTicInst.Actualizar(cancha);

                if (nuevoId > 0)
                {
                    cancha.Id = nuevoId;
                }

                httpResponse = new HttpResponseMessage(HttpStatusCode.OK);
                String JSON = JsonConvert.SerializeObject(cancha);
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
                string id = data.Id;
                string nombre = data.Nombre;
                string ticId = data.TicId;
                string fotoUno = data.FotoUno;
                string fotoDos = data.FotoDos;
                string fotoTres = data.FotoTres;
                string valorSegmento = data.ValorSegmento;
                string descuentoSegmento = data.DescuentoSegmento;
                string disciplina = data.Disciplina;
                string instId = data.InstId;
                int eliminado = 0;

                VCFramework.Entidad.RlTicInst cancha = new VCFramework.Entidad.RlTicInst();
                cancha.Id = int.Parse(id);
                cancha.Nombre = nombre;
                cancha.TicId = int.Parse(ticId);
                cancha.FotoUno = fotoUno;
                cancha.FotoDos = fotoDos;
                cancha.FotoTres = fotoTres;
                cancha.Eliminado = eliminado;
                cancha.InstId = int.Parse(instId);
                cancha.ValorSegmento = int.Parse(valorSegmento);
                cancha.DescuentoSegmento = int.Parse(descuentoSegmento);
                cancha.Disciplina = disciplina;

                nuevoId = VCFramework.Entidad.RlTicInst.Insertar(cancha);

                if (nuevoId > 0)
                {
                    cancha.Id = nuevoId;
                }

                httpResponse = new HttpResponseMessage(HttpStatusCode.OK);
                String JSON = JsonConvert.SerializeObject(cancha);
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

        [System.Web.Http.AcceptVerbs("DELETE")]
        public HttpResponseMessage Delete(dynamic DynamicClass)
        {

            string Input = JsonConvert.SerializeObject(DynamicClass);

            dynamic data = JObject.Parse(Input);

            //validaciones antes de ejecutar la llamada.
            if (data.Id == 0)
                throw new ArgumentNullException("Id");


            HttpResponseMessage httpResponse = new HttpResponseMessage();

            try
            {
                string id = data.Id;
                int idBuscar = int.Parse(id);
                List<VCFramework.Entidad.RlTicInst> cancha = VCFramework.Entidad.RlTicInst.ListarPorId(idBuscar);

                if (cancha != null && cancha[0].Id > 0)
                {
                    cancha[0].Eliminado = 1;

                    int idEliminado = VCFramework.Entidad.RlTicInst.Actualizar(cancha[0]);

                    httpResponse = new HttpResponseMessage(HttpStatusCode.OK);
                    String JSON = JsonConvert.SerializeObject(cancha);
                    httpResponse.Content = new StringContent(JSON);
                    httpResponse.Content.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue(VCFramework.NegocioMySql.Utiles.JSON_DOCTYPE);

                }


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