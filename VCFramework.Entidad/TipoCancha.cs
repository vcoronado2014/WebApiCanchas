using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VCFramework.Negocio.Factory;

namespace VCFramework.Entidad
{
    public class TipoCancha
    {
        public static System.Configuration.ConnectionStringSettings setCnsWebLun = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BDColegioSql"];

        public int Id { get; set; }
        public string Nombre { get; set; }
        public int TpsId { get; set; }
        public int Largo { get; set; }
        public int Ancho { get; set; }
        public int TipoMedida { get; set; }
        public int CantidadJugadores { get; set; }
        public int InstId { get; set; }
        public int Eliminado { get; set; }

        /// <summary>
        /// Insertar Registro
        /// </summary>
        /// <param name="entidad"></param>
        /// <returns></returns>
        public static int Insertar(VCFramework.Entidad.TipoCancha entidad)
        {
            Factory fac = new Factory();
            return fac.Insertar<VCFramework.Entidad.TipoCancha>(entidad, setCnsWebLun);
        }

        /// <summary>
        /// Actualizar Registro
        /// </summary>
        /// <param name="entidad"></param>
        /// <returns></returns>
        public static int Actualizar(VCFramework.Entidad.TipoCancha entidad)
        {
            Factory fac = new Factory();
            return fac.Update<VCFramework.Entidad.TipoCancha>(entidad, setCnsWebLun);
        }

        /// <summary>
        /// Eliminar Registro, Eliminado=1
        /// </summary>
        /// <param name="entidad"></param>
        /// <returns></returns>
        public static int Eliminar(VCFramework.Entidad.TipoCancha entidad)
        {
            entidad.Eliminado = 1;
            Factory fac = new Factory();
            return fac.Update<VCFramework.Entidad.TipoCancha>(entidad, setCnsWebLun);
        }

        /// <summary>
        /// Listar Todo
        /// </summary>
        /// <returns></returns>
        public static List<VCFramework.Entidad.TipoCancha> Listar()
        {
            VCFramework.Negocio.Factory.Factory fac = new VCFramework.Negocio.Factory.Factory();
            FiltroGenerico filtro = new FiltroGenerico();
            filtro.Campo = "ELIMINADO";
            filtro.TipoDato = TipoDatoGeneral.Entero;
            filtro.Valor = "0";

            List<object> lista = fac.Leer<VCFramework.Entidad.TipoCancha>(filtro, setCnsWebLun);
            List<VCFramework.Entidad.TipoCancha> lista2 = new List<VCFramework.Entidad.TipoCancha>();
            if (lista != null)
            {
                lista2 = lista.Cast<VCFramework.Entidad.TipoCancha>().ToList();
            }

            return lista2;
        }

        /// <summary>
        /// Lista los elementos por Id
        /// </summary>
        /// <param name="id">Identificador del elemento</param>
        /// <returns></returns>
        public static List<VCFramework.Entidad.TipoCancha> ListarPorId(int id)
        {
            VCFramework.Negocio.Factory.Factory fac = new VCFramework.Negocio.Factory.Factory();
            FiltroGenerico filtro = new FiltroGenerico();
            filtro.Campo = "ELIMINADO";
            filtro.TipoDato = TipoDatoGeneral.Entero;
            filtro.Valor = "0";

            FiltroGenerico filtro2 = new FiltroGenerico();
            filtro2.Campo = "ID";
            filtro2.TipoDato = TipoDatoGeneral.Entero;
            filtro2.Valor = id.ToString();

            List<FiltroGenerico> filtros = new List<FiltroGenerico>();
            filtros.Add(filtro);
            filtros.Add(filtro2);

            List<object> lista = fac.Leer<VCFramework.Entidad.TipoCancha>(filtros, setCnsWebLun);
            List<VCFramework.Entidad.TipoCancha> lista2 = new List<VCFramework.Entidad.TipoCancha>();
            if (lista != null)
            {
                lista2 = lista.Cast<VCFramework.Entidad.TipoCancha>().ToList();
            }

            return lista2;
        }
    }

    public enum TipoMedida
    {
        Metros=0,
        Centimetros=1
    }
}
