using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VCFramework.Negocio.Factory;

namespace VCFramework.NegocioMySql
{
    public class TipoCancha
    {
        public static System.Configuration.ConnectionStringSettings setCnsWebLun = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BDColegioSql"];
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
    }
}
