using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VCFramework.Entidad
{
    public class ConfiguracionInstitucion
    {
        public int Id { get; set; }
        public int InstId { get; set; }
        public string UrlFacebook { get; set; }
        public string UrlSitio { get; set; }
        public string UrlTwitter { get; set; }
        public string UrlInstagram { get; set; }
        public string UrlUbicacion { get; set; }
        public int Eliminado { get; set; }
    }
}
