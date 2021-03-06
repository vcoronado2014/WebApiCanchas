﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Xml;
using System.Security.Cryptography;
using System.Text.RegularExpressions;

namespace VCFramework.NegocioMySql
{
    public class Utiles
    {
        public const string HTML_DOCTYPE = "text/html";
        public const string JSON_DOCTYPE = "application/json";
        public const string XML_DOCTYPE = "application/xml";

        public static int EntregaEntero(string valorDosDigitos)
        {
            int retorno = 0;

            if (valorDosDigitos.Length == 2)
            {
                string valorUno = valorDosDigitos.Substring(0, 1);
                string valorDos = valorDosDigitos.Substring(1, 1);
                if (valorUno == "0")
                {
                    retorno = int.Parse(valorDos);
                }
                else
                {
                    retorno = int.Parse(valorDosDigitos);
                }
            }

            return retorno;
        }
        public static bool IsNumeric(object Expression)
        {
            double retNum;

            bool isNum = Double.TryParse(Convert.ToString(Expression), System.Globalization.NumberStyles.Any, System.Globalization.NumberFormatInfo.InvariantInfo, out retNum);
            return isNum;
        }
        public static string Encriptar(string _cadenaAencriptar)
        {
            string result = string.Empty;
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(_cadenaAencriptar);
            result = Convert.ToBase64String(encryted);
            return result;
        }
        public static bool ValidaEmail(string email)
        {
            String expresion;
            expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(email, expresion))
            {
                if (Regex.Replace(email, expresion, String.Empty).Length == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        /// Esta función desencripta la cadena que le envíamos en el parámentro de entrada.
        public static string DesEncriptar(string _cadenaAdesencriptar)
        {
            string result = string.Empty;
            byte[] decryted = Convert.FromBase64String(_cadenaAdesencriptar);
            //result = System.Text.Encoding.Unicode.GetString(decryted, 0, decryted.ToArray().Length);
            result = System.Text.Encoding.Unicode.GetString(decryted);
            return result;
        }

        //public static byte[] IV = Encoding.ASCII.GetBytes("Devjoker7.37hAES");

        //public static string Encripta(string Cadena, string Password)
        //{
        //    byte[] Clave = Encoding.ASCII.GetBytes(Password);
        //    byte[] inputBytes = Encoding.ASCII.GetBytes(Cadena);
        //    byte[] encripted;
        //    RijndaelManaged cripto = new RijndaelManaged();
        //    using (MemoryStream ms = new MemoryStream(inputBytes.Length))
        //    {
        //        using (CryptoStream objCryptoStream = new CryptoStream(ms, cripto.CreateEncryptor(Clave, IV), CryptoStreamMode.Write))
        //        {
        //            objCryptoStream.Write(inputBytes, 0, inputBytes.Length);
        //            objCryptoStream.FlushFinalBlock();
        //            objCryptoStream.Close();
        //        }
        //        encripted = ms.ToArray();
        //    }
        //    return Convert.ToBase64String(encripted);
        //}



        //public static string Desencripta(string Cadena, string Password)
        //{
        //    byte[] Clave = Encoding.ASCII.GetBytes(Password);
        //    byte[] inputBytes = Convert.FromBase64String(Cadena);
        //    byte[] resultBytes = new byte[inputBytes.Length];
        //    string textoLimpio = String.Empty;
        //    RijndaelManaged cripto = new RijndaelManaged();
        //    using (MemoryStream ms = new MemoryStream(inputBytes))
        //    {
        //        using (CryptoStream objCryptoStream = new CryptoStream(ms, cripto.CreateDecryptor(Clave, IV), CryptoStreamMode.Read))
        //        {
        //            using (StreamReader sr = new StreamReader(objCryptoStream, true))
        //            {
        //                textoLimpio = sr.ReadToEnd();
        //            }
        //        }
        //    }
        //    return textoLimpio;
        //}

        // Connection String
        //public const string ConnStr =
        //   "Driver={MySQL ODBC 3.51 Driver};Server=localhost;Database=bdcolegios_mysql;uid=root;pwd=co2008;option=3";
        //public const string ConnStr =
        //   "Driver={MySQL ODBC 5.1 Driver};Server=MYSQL5011.Smarterasp.net;Database=db_9dac90_cole;User=9dac90_cole;Password=antonia2006;Option=3;";

        public static string ConnStr()
        {
            string cns = "Driver={MySQL ODBC 5.1 Driver};Server=MYSQL5011.Smarterasp.net;Database=db_9dac90_cole;User=9dac90_cole;Password=antonia2006;Option=3;";
            if (System.Configuration.ConfigurationManager.ConnectionStrings["BDColegioSql"].ConnectionString != null)
                cns = System.Configuration.ConfigurationManager.ConnectionStrings["BDColegioSql"].ConnectionString;
            return cns;
        }

        public const string CNS = "BDColegioSql";

        public static string NombreBaseDatos()
        {
            string retorno = "'db_9dac90_cole'";

            if (System.Configuration.ConfigurationManager.AppSettings["NOMBRE_BD"] != null)
            {
                retorno = "'" + System.Configuration.ConfigurationManager.AppSettings["NOMBRE_BD"].ToString() + "'";
            }

            return retorno;
        }
        public static string SMTP()
        {
            string retorno = "smtp.gmail.com";
            if (System.Configuration.ConfigurationManager.AppSettings["SMTP"] != null)
            {
                retorno = System.Configuration.ConfigurationManager.AppSettings["SMTP"].ToString();
            }

            return retorno;
        }
        public static string PUERTO_SMTP()
        {
            string retorno = "587";
            if (System.Configuration.ConfigurationManager.AppSettings["PUERTO_SMTP"] != null)
            {
                retorno = System.Configuration.ConfigurationManager.AppSettings["PUERTO_SMTP"].ToString();
            }

            return retorno;
        }
        public static string NOMBRE_SERVIDOR_CORREO()
        {
            string retorno = "vcoronado.alarcon@gmail.com";
            if (System.Configuration.ConfigurationManager.AppSettings["NOMBRE_SERVIDOR_CORREO"] != null)
            {
                retorno = System.Configuration.ConfigurationManager.AppSettings["NOMBRE_SERVIDOR_CORREO"].ToString();
            }

            return retorno;
        }
        public static string CLAVE_SERVIDOR_CORREO()
        {
            string retorno = "antonia2005";
            if (System.Configuration.ConfigurationManager.AppSettings["CLAVE_SERVIDOR_CORREO"] != null)
            {
                retorno = System.Configuration.ConfigurationManager.AppSettings["CLAVE_SERVIDOR_CORREO"].ToString();
            }

            return retorno;
        }
        public static string HABILITA_COPIA_ADMIN1()
        {
            string retorno = "0";
            if (System.Configuration.ConfigurationManager.AppSettings["HABILITA_COPIA_ADMIN1"] != null)
            {
                retorno = System.Configuration.ConfigurationManager.AppSettings["HABILITA_COPIA_ADMIN1"].ToString();
            }

            return retorno;
        }

        public static string ENABLE_SSL()
        {
            string retorno = "0";
            if (System.Configuration.ConfigurationManager.AppSettings["ENABLE_SSL"] != null)
            {
                retorno = System.Configuration.ConfigurationManager.AppSettings["ENABLE_SSL"].ToString();
            }

            return retorno;
        }
        //public static System.Net.Mail.MailMessage ConstruyeMensajeContacto(string nombre, string telefono, string email, string motivo)
        //{

        //    System.Net.Mail.MailMessage sms = new System.Net.Mail.MailMessage();
        //    sms.Subject = "Formulario Contacto CPAS";
        //    sms.To.Add(Utiles.NOMBRE_SERVIDOR_CORREO());
        //    string habilitaCopiaAdmin1 = Utiles.HABILITA_COPIA_ADMIN1();
        //    if (habilitaCopiaAdmin1 == "1")
        //    {
        //        sms.To.Add(COPIA_ADMIN_1());
        //    }
        //    string habilitaCopiaAdmin2 = Utiles.HABILITA_COPIA_ADMIN1();
        //    if (habilitaCopiaAdmin2 == "1")
        //    {
        //        sms.To.Add(COPIA_ADMIN_2());
        //    }
        //    sms.From = new System.Net.Mail.MailAddress("contacto@cpas.cl", "asambleas");
        //    sms.IsBodyHtml = true;

        //    StringBuilder sb = new StringBuilder();
        //    sb.Append("<html>");

        //    string htmlMensaje = ObtenerMensajeXML("Contacto", true);
        //    if (htmlMensaje != null)
        //    {
        //        htmlMensaje = htmlMensaje.Replace("{Nombre}", nombre).Replace("{Telefono}", telefono).Replace("{Email}", email).Replace("{Motivo}", motivo);
        //        sb.Append(htmlMensaje);
        //    }
        //    else
        //    {
        //        sb.AppendFormat("{0}, Teléfono Contacto {1}, correo electónico {2}:<br />", nombre, telefono, email);
        //        sb.AppendFormat("Desea contactarse mediante el formulario de contacto, donde ha ingresado el siguiente motivo: {0}<br />", motivo);
        //        sb.Append("***** Mensaje enviado desde el sistema automático de envio de correos de CPAS ******");

        //    }
        //    sb.Append("</html>");
        //    sms.Body = sb.ToString();
        //    return sms;
        //}


        public static string RetornaFechaFormateadaServidor(string fechaServidor)
        {
            string retorno = "";
            //lo primero es descomponer la fecha
            string[] fechas = fechaServidor.Split('/');
            if (fechas != null && fechas.Length == 3)
            {
                string dia = "";
                if (fechas[1].Length == 1)
                {
                    dia = "0" + fechas[1].ToString();
                }
                else
                {
                    dia = fechas[1].ToString();
                }
                string mes = "";
                if (fechas[0].Length == 1)
                {
                    mes = "0" + fechas[0].ToString();
                }
                else
                {
                    dia = fechas[0].ToString();
                }
                string anno = fechas[2].ToString();

                retorno = dia + "-" + mes + "-" + anno;
            }
            else
                retorno = DateTime.Now.ToShortDateString();


            return retorno;
        }

        public static string RetornaFechaEntera()
        {
            DateTime fechaServidor = DateTime.Now;
            string retorno = "";
            string anno = fechaServidor.Year.ToString();
            string mes = "";
            string dia = "";
            if (fechaServidor.Month < 10)
                mes = "0" + fechaServidor.Month.ToString();
            else
                mes = fechaServidor.Month.ToString();

            if (fechaServidor.Day < 10)
                dia = "0" + fechaServidor.Day.ToString();
            else
                dia = fechaServidor.Day.ToString();

            retorno = anno + mes + dia;

            return retorno;
        }
        public static string RetornaHoraEntera()
        {
            DateTime fechaServidor = DateTime.Now;
            string retorno = "";
            string hora = "";
            string minutos = "";
            if (fechaServidor.Hour < 10)
                hora = "0" + fechaServidor.Hour.ToString();
            else
                hora = fechaServidor.Hour.ToString();

            if (fechaServidor.Minute < 10)
                minutos = "0" + fechaServidor.Minute.ToString();
            else
                minutos = fechaServidor.Minute.ToString();

            retorno = hora + minutos;

            return retorno;
        }

        public static string ConstruyeFecha(DateTime fecha)
        {
            string retorno = "";
            string dia = "";
            string mes = "";
            string anno = "";
            string hora = "";
            string minutos = "";
            string segundos = "";


            if (fecha.Day < 10)
                dia = "0" + fecha.Day.ToString();
            else
                dia = fecha.Day.ToString();

            if (fecha.Month < 10)
                mes = "0" + fecha.Month.ToString();
            else
                mes = fecha.Month.ToString();

            if (fecha.Hour < 10)
                hora = "0" + fecha.Hour.ToString();
            else
                hora = fecha.Hour.ToString();

            if (fecha.Minute < 10)
                minutos = "0" + fecha.Minute.ToString();
            else
                minutos = fecha.Minute.ToString();

            if (fecha.Second < 10)
                segundos = "0" + fecha.Second.ToString();
            else
                segundos = fecha.Second.ToString();

            anno = fecha.Year.ToString();

            retorno = anno + "-" + mes + "-" + dia + " " + hora + ":" + segundos;
            return retorno;
        }
       
        public static void Log(string mensaje)
        {
            string carpetaArchivo = @"Logs\log.txt";
            string rutaFinal = AppDomain.CurrentDomain.BaseDirectory + carpetaArchivo;

            object Locker = new object();
            XmlDocument _doc = new XmlDocument();

            try
            {
                if (!File.Exists(rutaFinal))
                {
                    File.Create(rutaFinal);
                }

                _doc.Load(rutaFinal);

                lock (Locker)
                {
                    //var id = (XmlElement)_doc.DocumentElement.LastChild;
                    //id.GetElementsByTagName("Id");
                    int cantidad = _doc.ChildNodes.Count;
                    int indice = 1;
                    if (cantidad > 0)
                    {
                        //obtener el ultimo elemento id
                        if ((XmlElement)_doc.DocumentElement.LastChild != null)
                        {
                            var ultimo = (XmlElement)_doc.DocumentElement.LastChild;
                            indice = int.Parse(ultimo.LastChild.InnerText);
                            indice = indice + 1;
                        }
                    }

                    var el = (XmlElement)_doc.DocumentElement.AppendChild(_doc.CreateElement("error"));
                    //el.SetAttribute("Fecha", ConstruyeFecha(DateTime.Now));

                    el.AppendChild(_doc.CreateElement("Fecha")).InnerText = ConstruyeFecha(DateTime.Now);
                    el.AppendChild(_doc.CreateElement("Detalle")).InnerText = mensaje;
                    el.AppendChild(_doc.CreateElement("Id")).InnerText = indice.ToString();
                    _doc.Save(rutaFinal);
                    VCFramework.Entidad.LogsSistema log = new Entidad.LogsSistema();
                    log.FechaRegistro = DateTime.Now;
                    log.Mensaje = mensaje;
                    log.TipoMensaje = 1; //corresponde a texto no a error
                    VCFramework.NegocioMySql.LogsSistema.Insertar(log);
                }

            }
            catch (Exception ex)
            {

            }

        }
        public static string EntregaNombreArchivo(string nombreArchivo)
        {
            StringBuilder sb = new StringBuilder();
            string[] texto = nombreArchivo.ToString().Split(' ');
            string nuevoNombre = string.Empty;
            if (texto.Length > 0)
            {
                for (int i = 0; i < texto.Length; i++)
                {
                    if (i > 0)
                    {
                        sb.Append(texto[i]);
                        sb.Append(" ");
                    }
                }
            }
            return sb.ToString();
        }
        public static string ObtenerMensajeXML(string nombre, bool esNuevo)
        {
            string retorno = "";
            string carpetaArchivo = @"Mensajes.xml";
            string rutaFinal = AppDomain.CurrentDomain.BaseDirectory + carpetaArchivo;
            XmlDocument doc = new XmlDocument();
            doc.Load(rutaFinal);

            try
            {
                XmlNodeList mensaje = doc.GetElementsByTagName("Mensaje");
                XmlNodeList lista = ((XmlElement)mensaje[0]).GetElementsByTagName("item");
                if (lista != null && lista.Count > 0)
                {
                    foreach (XmlElement nodo in lista)
                    {
                        if (nodo != null)
                        {
                            if (nodo.Attributes[0] != null)
                            {
                                if (nodo.Attributes[0].InnerText.ToString().ToUpper() == nombre.ToUpper())
                                {
                                    string otraBusqueda = "nuevo";
                                    if (!esNuevo)
                                        otraBusqueda = "modificado";

                                    if (nodo.ChildNodes != null && nodo.ChildNodes.Count > 0)
                                    {
                                        foreach (XmlElement nodito in nodo.ChildNodes)
                                        {
                                            if (nodito.Name.ToUpper() == otraBusqueda.ToUpper())
                                            {
                                                retorno = nodito.InnerXml;
                                                break;
                                            }
                                        }
                                    }


                                }
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                NegocioMySql.Utiles.Log(ex);
            }

            return retorno;
        }

        public static string ObtenerUrl()
        {
            string retorno = "http://www.cpas.cl";
            try
            {
                retorno = System.Web.HttpContext.Current.Request.Url.Host;
            }
            catch (Exception ex)
            {
                Log(ex);
            }
            return retorno;
        }
        public static void Log(Exception mensaje)
        {
            string carpetaArchivo = @"Logs\log.txt";
            string rutaFinal = AppDomain.CurrentDomain.BaseDirectory + carpetaArchivo;

            object Locker = new object();
            XmlDocument _doc = new XmlDocument();

            try
            {
                if (!File.Exists(rutaFinal))
                {
                    File.Create(rutaFinal);
                }

                _doc.Load(rutaFinal);

                lock (Locker)
                {
                    //var id = (XmlElement)_doc.DocumentElement.LastChild;
                    //id.GetElementsByTagName("Id");
                    int cantidad = _doc.ChildNodes.Count;
                    int indice = 1;
                    if (cantidad > 0)
                    {
                        //obtener el ultimo elemento id
                        if ((XmlElement)_doc.DocumentElement.LastChild != null)
                        {
                            var ultimo = (XmlElement)_doc.DocumentElement.LastChild;
                            indice = int.Parse(ultimo.LastChild.InnerText);
                            indice = indice + 1;
                        }
                    }

                    var el = (XmlElement)_doc.DocumentElement.AppendChild(_doc.CreateElement("error"));
                    //el.SetAttribute("Fecha", ConstruyeFecha(DateTime.Now));

                    el.AppendChild(_doc.CreateElement("Fecha")).InnerText = ConstruyeFecha(DateTime.Now);
                    el.AppendChild(_doc.CreateElement("Detalle")).InnerText = mensaje.Message;
                    el.AppendChild(_doc.CreateElement("Id")).InnerText = indice.ToString();
                    _doc.Save(rutaFinal);
                    VCFramework.Entidad.LogsSistema log = new Entidad.LogsSistema();
                    log.FechaRegistro = DateTime.Now;
                    log.Mensaje = mensaje.InnerException.Message;
                    log.TipoMensaje = 2; //corresponde a error
                    VCFramework.NegocioMySql.LogsSistema.Insertar(log);
                }

            }
            catch (Exception ex)
            {

            }


        }
        /// <summary>
        /// Validar Rut en el formato 12.333.66-K
        /// </summary>
        /// <param name="rut">Rut Formateado</param>
        /// <returns></returns>
        public static bool validarRut(string rut)
        {

            bool validacion = false;
            try
            {
                rut = rut.ToUpper();
                rut = rut.Replace(".", "");
                rut = rut.Replace("-", "");
                int rutAux = int.Parse(rut.Substring(0, rut.Length - 1));

                char dv = char.Parse(rut.Substring(rut.Length - 1, 1));

                int m = 0, s = 1;
                for (; rutAux != 0; rutAux /= 10)
                {
                    s = (s + rutAux % 10 * (9 - m++ % 6)) % 11;
                }
                if (dv == (char)(s != 0 ? s + 47 : 75))
                {
                    validacion = true;
                }
            }
            catch (Exception)
            {
            }
            return validacion;
        }
    }
}
