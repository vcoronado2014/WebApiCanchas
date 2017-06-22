using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web.Http;
using Microsoft.Owin.Security.OAuth;
using Newtonsoft.Json.Serialization;
using System.Net.Http.Headers;

namespace WebApplication1
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API configuration and services
            // Configure Web API to use only bearer token authentication.
            config.SuppressDefaultHostAuthentication();
            config.Filters.Add(new HostAuthenticationFilter(OAuthDefaults.AuthenticationType));

            config.Formatters.JsonFormatter.SupportedMediaTypes.Add(new MediaTypeHeaderValue("text/html"));
            config.Formatters.JsonFormatter.SupportedMediaTypes.Add(new MediaTypeHeaderValue("application/json"));


            // Web API routes
            config.MapHttpAttributeRoutes();

            #region  ObtenerLogin
            config.Routes.MapHttpRoute(
                name: "Login",
                routeTemplate: "api/Login",
                defaults: new
                {
                    controller = "Login"
                }
            );
            #endregion

            #region  TipoSuperficie
            config.Routes.MapHttpRoute(
                name: "TipoSuperficie",
                routeTemplate: "api/TipoSuperficie",
                defaults: new
                {
                    controller = "TipoSuperficie"
                }
            );
            #endregion

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );
        }
    }
}
