using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Caching;
using VCFramework.Negocio.Factory;

namespace VCFramework.NegocioMySql
{
    public class ConfiguracionInstitucion
    {
        public static System.Configuration.ConnectionStringSettings setCnsWebLun = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BDColegioSql"];

        public static VCFramework.Entidad.ConfiguracionInstitucion ObtenerporInstId(int instId)
        {
            VCFramework.Negocio.Factory.Factory fac = new VCFramework.Negocio.Factory.Factory();
            FiltroGenerico filtro = new FiltroGenerico();
            filtro.Campo = "INST_ID";
            filtro.TipoDato = TipoDatoGeneral.Entero;
            filtro.Valor = instId.ToString();

            VCFramework.Entidad.ConfiguracionInstitucion entidad = new Entidad.ConfiguracionInstitucion();

            List<object> lista = fac.Leer<VCFramework.Entidad.ConfiguracionInstitucion>(filtro, setCnsWebLun);
            List<VCFramework.Entidad.ConfiguracionInstitucion> lista2 = new List<VCFramework.Entidad.ConfiguracionInstitucion>();
            if (lista != null)
            {
                lista2 = lista.Cast<VCFramework.Entidad.ConfiguracionInstitucion>().ToList();
            }

            if (lista2 != null)
                entidad = lista2.FirstOrDefault(p => p.InstId == instId);

            return entidad;
        }

    }
}
