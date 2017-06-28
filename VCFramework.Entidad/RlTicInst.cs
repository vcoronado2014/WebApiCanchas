using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VCFramework.Negocio.Factory;

namespace VCFramework.Entidad
{
    public class RlTicInst
    {
        public static System.Configuration.ConnectionStringSettings setCnsWebLun = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BDColegioSql"];

        public int Id { get; set; }
        public int TicId { get; set; }
        public int InstId { get; set; }
        public string Nombre { get; set; }
        public string FotoUno { get; set; }
        public string FotoDos { get; set; }
        public string FotoTres { get; set; }
        public int Eliminado { get; set; }
        public int ValorSegmento { get; set; }
        public int DescuentoSegmento { get; set; }
        public string Disciplina { get; set; }

        /// <summary>
        /// Insertar Registro
        /// </summary>
        /// <param name="entidad"></param>
        /// <returns></returns>
        public static int Insertar(VCFramework.Entidad.RlTicInst entidad)
        {
            Factory fac = new Factory();
            return fac.Insertar<VCFramework.Entidad.RlTicInst>(entidad, setCnsWebLun);
        }

        /// <summary>
        /// Actualizar Registro
        /// </summary>
        /// <param name="entidad"></param>
        /// <returns></returns>
        public static int Actualizar(VCFramework.Entidad.RlTicInst entidad)
        {
            Factory fac = new Factory();
            return fac.Update<VCFramework.Entidad.RlTicInst>(entidad, setCnsWebLun);
        }

        /// <summary>
        /// Eliminar Registro, Eliminado=1
        /// </summary>
        /// <param name="entidad"></param>
        /// <returns></returns>
        public static int Eliminar(VCFramework.Entidad.RlTicInst entidad)
        {
            entidad.Eliminado = 1;
            Factory fac = new Factory();
            return fac.Update<VCFramework.Entidad.RlTicInst>(entidad, setCnsWebLun);
        }

        /// <summary>
        /// Listar Todo
        /// </summary>
        /// <returns></returns>
        public static List<VCFramework.Entidad.RlTicInst> Listar()
        {
            VCFramework.Negocio.Factory.Factory fac = new VCFramework.Negocio.Factory.Factory();
            FiltroGenerico filtro = new FiltroGenerico();
            filtro.Campo = "ELIMINADO";
            filtro.TipoDato = TipoDatoGeneral.Entero;
            filtro.Valor = "0";

            List<object> lista = fac.Leer<VCFramework.Entidad.RlTicInst>(filtro, setCnsWebLun);
            List<VCFramework.Entidad.RlTicInst> lista2 = new List<VCFramework.Entidad.RlTicInst>();
            if (lista != null)
            {
                lista2 = lista.Cast<VCFramework.Entidad.RlTicInst>().ToList();
            }

            return lista2;
        }

        /// <summary>
        /// Lista los elementos por Id
        /// </summary>
        /// <param name="id">Identificador del elemento</param>
        /// <returns></returns>
        public static List<VCFramework.Entidad.RlTicInst> ListarPorId(int id)
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

            List<object> lista = fac.Leer<VCFramework.Entidad.RlTicInst>(filtros, setCnsWebLun);
            List<VCFramework.Entidad.RlTicInst> lista2 = new List<VCFramework.Entidad.RlTicInst>();
            if (lista != null)
            {
                lista2 = lista.Cast<VCFramework.Entidad.RlTicInst>().ToList();
            }

            return lista2;
        }

        /// <summary>
        /// Lista los elementos por InstId
        /// </summary>
        /// <param name="id">Identificador del elemento</param>
        /// <returns></returns>
        public static List<VCFramework.Entidad.RlTicInst> ListarPorInstId(int instId)
        {
            VCFramework.Negocio.Factory.Factory fac = new VCFramework.Negocio.Factory.Factory();
            FiltroGenerico filtro = new FiltroGenerico();
            filtro.Campo = "ELIMINADO";
            filtro.TipoDato = TipoDatoGeneral.Entero;
            filtro.Valor = "0";

            FiltroGenerico filtro2 = new FiltroGenerico();
            filtro2.Campo = "INST_ID";
            filtro2.TipoDato = TipoDatoGeneral.Entero;
            filtro2.Valor = instId.ToString();

            List<FiltroGenerico> filtros = new List<FiltroGenerico>();
            filtros.Add(filtro);
            filtros.Add(filtro2);

            List<object> lista = fac.Leer<VCFramework.Entidad.RlTicInst>(filtros, setCnsWebLun);
            List<VCFramework.Entidad.RlTicInst> lista2 = new List<VCFramework.Entidad.RlTicInst>();
            if (lista != null)
            {
                lista2 = lista.Cast<VCFramework.Entidad.RlTicInst>().ToList();
            }

            return lista2;
        }
    }
}
