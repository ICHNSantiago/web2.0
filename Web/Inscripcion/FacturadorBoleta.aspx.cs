using CrystalDecisions.Shared;
using Negocio;
using System;
using System.Collections.Generic;
using System.Data;

namespace Web.Inscripcion
{
    public partial class FacturadorBoleta : System.Web.UI.Page
    {
       
        public string BoletaFacturaChile(DataTable data, DataTable detalle, int folioBoleta, DateTime fechaEmision)
        {
            string nombreCompleto = data.Rows[0]["Nombre"].ToString().ToUpper().Trim();
            string rutcliente = data.Rows[0]["rut"].ToString().ToUpper().Trim();
            string montoBoleta = data.Rows[0]["MontoTotal"].ToString().ToUpper().Trim();
            string mailCliente = data.Rows[0]["email"].ToString().ToUpper().Trim();
            string direccionCliente = data.Rows[0]["direcion"].ToString().ToUpper().Trim();
            string comunaCliente = data.Rows[0]["comuna"].ToString().ToUpper().Trim();

            string glosaVenta1 = string.Empty;
            string glosaVenta2 = string.Empty;
            string glosaVenta3 = string.Empty;
            string glosaVenta4 = string.Empty;
            string glosaVenta5 = string.Empty;
            string glosaVenta6 = string.Empty;
            string glosaVenta7 = string.Empty;
            string glosaVenta8 = string.Empty;
            string glosaVenta9 = string.Empty;
            string glosaVenta10 = string.Empty;

            int cantidad1 = 0;
            int cantidad2 = 0;
            int cantidad3 = 0;
            int cantidad4 = 0;
            int cantidad5 = 0;
            int cantidad6 = 0;
            int cantidad7 = 0;
            int cantidad8 = 0;
            int cantidad9 = 0;
            int cantidad10 = 0;

            int precio1 = 0;
            int precio2 = 0;
            int precio3 = 0;
            int precio4 = 0;
            int precio5 = 0;
            int precio6 = 0;
            int precio7 = 0;
            int precio8 = 0;
            int precio9 = 0;
            int precio10 = 0;

            string alumnoID = detalle.Rows[0]["idAlumno"].ToString();
            string nombreAlumno = detalle.Rows[0]["Nombres"].ToString() + " " + detalle.Rows[0]["Ap_Paterno"].ToString();
            int netoVenta = 0;
            int cantidadCursos = detalle.Rows.Count;

            for (int i = 0; i < cantidadCursos; i++)
            {
                string curso = detalle.Rows[i]["Curso"].ToString();
                string sede = detalle.Rows[i]["Sede"].ToString();
                string horario = detalle.Rows[i]["NombreCorto"].ToString() + "  " + detalle.Rows[i]["HoraInicio"].ToString() + " - " + detalle.Rows[i]["HoraFin"].ToString();
                int precio = int.Parse(detalle.Rows[i]["TarifaIndividual"].ToString());
                netoVenta += precio;

                switch (i)
                {
                    case 0:
                        glosaVenta1 = "CURSO " + curso + " - " + sede + " " + horario;
                        cantidad1 = 1;
                        precio1 = precio;

                        break;
                    case 1:
                        glosaVenta2 = "CURSO " + curso + " - " + sede + " " + horario;
                        cantidad2 = 1;
                        precio2 = precio;
                        break;
                    case 2:
                        glosaVenta3 = "CURSO " + curso + " - " + sede + " " + horario;
                        cantidad3 = 1;
                        precio3 = precio;
                        break;
                    case 3:
                        glosaVenta4 = "CURSO " + curso + " - " + sede + " " + horario;
                        cantidad4 = 1;
                        precio4 = precio;
                        break;
                    case 4:
                        glosaVenta5 = "CURSO " + curso + " - " + sede + " " + horario;
                        cantidad5 = 1;
                        precio5 = precio;
                        break;
                    case 5:
                        glosaVenta6 = "CURSO " + curso + " - " + sede + " " + horario;
                        cantidad6 = 1;
                        precio6 = precio;
                        break;
                    case 6:
                        glosaVenta7 = "CURSO " + curso + " - " + sede + " " + horario;
                        cantidad7 = 1;
                        precio7 = precio;
                        break;
                    case 7:
                        glosaVenta8 = "CURSO " + curso + " - " + sede + " " + horario;
                        cantidad8 = 1;
                        precio8 = precio;
                        break;
                    case 8:
                        glosaVenta9 = "CURSO " + curso + " - " + sede + " " + horario;
                        cantidad9 = 1;
                        precio9 = precio;
                        break;
                    case 9:
                        glosaVenta10 = "CURSO " + curso + " - " + sede + " " + horario;
                        cantidad10 = 1;
                        precio10 = precio;
                        break;
                    default:
                        break;
                }
            }

            ValidarRut validar = new ValidarRut();
            bool estadoRut = validar.ValidaRut(rutcliente);

            int tipo = int.Parse(data.Rows[0]["idTipoDescuento"].ToString());
            decimal valorDscto = decimal.Parse(data.Rows[0]["Valor"].ToString());
            int montoDescuento;
            switch (tipo)
            {
                case 5:
                    decimal valor = valorDscto / 100;
                    decimal descuentoValor = netoVenta * valor;
                    montoDescuento = int.Parse(decimal.Round(descuentoValor, 0).ToString());

                    break;
                case 6:
                    valor = valorDscto / 100;
                    descuentoValor = netoVenta * valor;
                    montoDescuento = int.Parse(decimal.Round(descuentoValor, 0).ToString());

                    break;
                case 7:
                    valor = valorDscto / 100;
                    descuentoValor = netoVenta * valor;
                    montoDescuento = int.Parse(decimal.Round(descuentoValor, 0).ToString());
                    break;
                default:
                    montoDescuento = int.Parse(valorDscto.ToString());
                    break;
            }

            string varDscItem01 = "ALUMNO: " + nombreAlumno + " RUN: " + alumnoID;
            string varDscItem02 = varDscItem01;

            if (montoDescuento > 0)
            {
                varDscItem01 = "DESCTO $ " + montoDescuento.ToString() + " " + nombreAlumno + " " + alumnoID;

                switch (cantidadCursos)
                {
                    case 1:
                        precio1 -= montoDescuento;
                        break;
                    case 2:
                        precio2 -= montoDescuento;
                        break;
                    case 3:
                        precio3 -= montoDescuento;
                        break;
                    case 4:
                        precio4 -= montoDescuento;
                        break;
                    case 5:
                        precio5 -= montoDescuento;
                        break;
                    case 6:
                        precio6 -= montoDescuento;
                        break;
                    case 7:
                        precio7 -= montoDescuento;
                        break;
                    case 8:
                        precio8 -= montoDescuento;
                        break;
                    case 9:
                        precio9 -= montoDescuento;
                        break;
                    case 10:
                        precio10 -= montoDescuento;
                        break;
                    default:
                        break;
                }
            }

            WSFacturaChile.emisionDocumentoRequestBody varEstadoBoletaNuevo = EmiteBoletaFacturaChile(folioBoleta, rutcliente, estadoRut, nombreCompleto, montoBoleta, mailCliente, fechaEmision.ToString("yyyy-MM-dd"), direccionCliente, comunaCliente, glosaVenta1, cantidad1, precio1, glosaVenta2, cantidad2, precio2, glosaVenta3, cantidad3, precio3, glosaVenta4, cantidad4, precio4, glosaVenta5, cantidad5, precio5, glosaVenta6, cantidad6, precio6, glosaVenta7, cantidad7, precio7, glosaVenta8, cantidad8, precio8, glosaVenta9, cantidad9, precio9, glosaVenta10, cantidad10, precio10, varDscItem01, varDscItem02, montoDescuento, cantidadCursos);
            return varEstadoBoletaNuevo.oDatosEmision.Mensaje;
        }

        public WSFacturaChile.emisionDocumentoRequestBody EmiteBoletaFacturaChile(int folio, string varRUTRecep, bool validarRut, string varRznSocRecep, string varMntExe, string varEmailDistribucion, string varFchEmis, string varDirRecep, string varCmnaRecep, string varNmbItem1, int varQtyItem1, int varPrcItem1, string varNmbItem2, int varQtyItem2, int varPrcItem2, string varNmbItem3, int varQtyItem3, int varPrcItem3, string varNmbItem4, int varQtyItem4, int varPrcItem4, string varNmbItem5, int varQtyItem5, int varPrcItem5, string varNmbItem6, int varQtyItem6, int varPrcItem6, string varNmbItem7, int varQtyItem7, int varPrcItem7, string varNmbItem8, int varQtyItem8, int varPrcItem8, string varNmbItem9, int varQtyItem9, int varPrcItem9, string varNmbItem10, int varQtyItem10, int varPrcItem10, string varDscItem01, string varDscItem02, int montoDescuento, int cantidad)
        {
            if (varDirRecep.Length > 60)
            {
                varDirRecep = varDirRecep.Substring(0, 59);
            }

            FacturaChileBoleta facturaChile = new FacturaChileBoleta
            {
                FolioBoleta = folio,
                RUTRecep = varRUTRecep,
                VarRut = validarRut,
                RznSocRecep = varRznSocRecep,
                MntExe = varMntExe,
                EmailDistribucion = varEmailDistribucion,
                FchEmis = varFchEmis,
                DirRecep = varDirRecep,
                CmnaRecep = varCmnaRecep,
                NmbItem1 = varNmbItem1,
                QtyItem1 = varQtyItem1,
                PrcItem1 = varPrcItem1,
                NmbItem2 = varNmbItem2,
                QtyItem2 = varQtyItem2,
                PrcItem2 = varPrcItem2,
                NmbItem3 = varNmbItem3,
                QtyItem3 = varQtyItem3,
                PrcItem3 = varPrcItem3,
                NmbItem4 = varNmbItem4,
                QtyItem4 = varQtyItem4,
                PrcItem4 = varPrcItem4,
                NmbItem5 = varNmbItem5,
                QtyItem5 = varQtyItem5,
                PrcItem5 = varPrcItem5,
                NmbItem6 = varNmbItem6,
                QtyItem6 = varQtyItem6,
                PrcItem6 = varPrcItem6,
                NmbItem7 = varNmbItem7,
                QtyItem7 = varQtyItem7,
                PrcItem7 = varPrcItem7,
                NmbItem8 = varNmbItem8,
                QtyItem8 = varQtyItem8,
                PrcItem8 = varPrcItem8,
                NmbItem9 = varNmbItem9,
                QtyItem9 = varQtyItem9,
                PrcItem9 = varPrcItem9,
                NmbItem10 = varNmbItem10,
                QtyItem10 = varQtyItem10,
                PrcItem10 = varPrcItem10,
            };

            WSFacturaChile.emisionDocumentoRequestBody varEstadoBoleta = facturaChile.EmiteBoletaCertchile(varDscItem01, varDscItem02, montoDescuento, cantidad);

            string varMensaje = varEstadoBoleta.oDatosEmision.Mensaje;

            if (varMensaje.Equals("Documento emitido correctamente"))
            {
                string base64String = varEstadoBoleta.oDatosEmision.PDFBase64;
                string boletaEmitida = varEstadoBoleta.oDatosEmision.Folio;
                GenerarPdfBoletaBeta(base64String, boletaEmitida);
            }           

            return varEstadoBoleta;
        }

        public string GenerarPdfBoletaBeta(string base64String, string boletaEmitida)
        {
            try
            {
                byte[] binaryData;
                binaryData = Convert.FromBase64String(base64String);

                // guarda la boleta em pdf
                System.IO.FileStream outFile;
                string archivo = @"C:/inetpub/wwwroot/sam/boleta/boleta" + boletaEmitida + ".pdf";
                outFile = new System.IO.FileStream(archivo, System.IO.FileMode.Create, System.IO.FileAccess.Write);
                outFile.Write(binaryData, 0, binaryData.Length);
                outFile.Close();
                return "ok";
            }
            catch (Exception ex)
            {
                return "Excepción, Error en GenerarPdfBoleta, detalle:" + ex.Message.ToString();
            }
        }

        public void GeneraContratoPdf(string contratoNumero)
        {
            try
            {
                Ncontrato contrato = new Ncontrato();
                DataTable data = contrato.BuscarInfoPdfContrato(contratoNumero);
                Planillas.CrystalReportContrato crystal = new Planillas.CrystalReportContrato();
                crystal.SetDataSource(data);
                string archivo = @"C:/inetpub/wwwroot/sam/contrato/contrato" + contratoNumero + ".pdf";              
                crystal.ExportToDisk(ExportFormatType.PortableDocFormat, archivo);
                crystal.Close();
                crystal.Dispose();
            }
            catch (Exception)
            {
            }
        }

        public void GeneraAnexoContratoPdf(int contratoNumero, int anexoNumero)
        {
            try
            {
                Ncontrato contrato = new Ncontrato();
                DataTable dataAnexo = contrato.PdfContratoDetalle(contratoNumero, anexoNumero);
                Planillas.CrystalReportAnexo anexoCrystal = new Planillas.CrystalReportAnexo();
                anexoCrystal.SetDataSource(dataAnexo);
                string archivo = @"C:/inetpub/wwwroot/sam/anexos/anexo" + anexoNumero + ".pdf";               
                anexoCrystal.ExportToDisk(ExportFormatType.PortableDocFormat, archivo);
                anexoCrystal.Close();
                anexoCrystal.Dispose();
            }
            catch (Exception)
            {
            }
        }

        public string GrabaContrato(int cotizacion, int boleta, int ejecutivo, string fechaContrato, DataTable detalle)
        {
            Ncontrato contrato = new Ncontrato();
            string resultado;
            string idContrato = contrato.Crear(cotizacion, fechaContrato, boleta, ejecutivo);

            try
            {
                if (int.TryParse(idContrato, out int contratoID))
                {
                    string varResultado = GrabaAnexoContrato(contratoID, ejecutivo, detalle, fechaContrato);

                    string[] idAnexos = varResultado.Split(',');

                    bool resultadoContrato = true;
                    resultado = idContrato;
                    for (int i = 0; i < idAnexos.Length; i++)
                    {
                        if (!int.TryParse(idAnexos[i].ToString(), out int _))
                        {
                            resultadoContrato = false;
                        }
                        else
                        {
                            resultado += "," + idAnexos[i].ToString();
                        }
                    }

                    if (resultadoContrato)
                    {
                        GeneraContratoPdf(idContrato);
                    }
                }
                else
                {
                    // error al generar el contrato
                    resultado = idContrato;
                }

            }
            catch (Exception ex)
            {
                resultado = ex.Message;
            }

            return resultado;
        }

        public string GrabaContratoAnexo(int contratoID, int contratoEmpresaID, string alumnoRut, string codigoCurso, int vendedor, int tipoRegistro, int alumnoTipo, string fechaAnexo)
        {
            Ncontrato contrato = new Ncontrato();
            return contrato.CrearAnexo(contratoID, contratoEmpresaID, alumnoRut, codigoCurso, fechaAnexo, vendedor, tipoRegistro, alumnoTipo);
        }

        public int TipoAlumno(string id)
        {
            Nalumnos nalumno = new Nalumnos();
            int tipoAlumno;

            if (nalumno.Bloqueo(id))
            {
                tipoAlumno = 0;
            }
            else
            {
                DataTable dataTable = nalumno.Antiguedadv2(id);


                if (dataTable.Rows.Count > 0)
                {
                    tipoAlumno = 2;
                    int meses = int.Parse(dataTable.Rows[0]["MESES"].ToString());

                    if (meses >= 7)
                    {
                        tipoAlumno = 3;
                    }
                }
                else
                {
                    tipoAlumno = 1;
                }
            }

            return tipoAlumno;
        }


        public string GrabaAnexoContrato(int contratoID, int ejecutivo, DataTable detalle, string fecha)
        {
            string idAlumno = detalle.Rows[0]["idAlumno"].ToString();
            int tipoAlumno = TipoAlumno(idAlumno);
            string numAnexo = string.Empty;
            string codigoCurso;

            string resultado;
            for (int i = 0; i < detalle.Rows.Count; i++)
            {
                codigoCurso = detalle.Rows[i]["idCursoAbierto"].ToString();
                resultado = GrabaContratoAnexo(contratoID, 1, idAlumno, codigoCurso, ejecutivo, 1, tipoAlumno, fecha);

                if (int.TryParse(resultado, out int detalle01))
                {
                    if (numAnexo.Equals(string.Empty))
                    {
                        numAnexo = resultado;
                    }
                    else
                    {
                        numAnexo = numAnexo + "," + resultado;
                    }


                    GeneraAnexoContratoPdf(contratoID, detalle01);
                }
            }

            return numAnexo;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string proyecto = Convert.ToString(Request["sitio_sam"]);
            string cotizacionID = Convert.ToString(Request["cotizacion_id"]);

            if (cotizacionID != null)
            {
                string folio = Convert.ToString(Request["folio_id"]);
                int idCotizacion = int.Parse(cotizacionID);
                int boletaFolio = int.Parse(folio);
                FechaApi fecha = new FechaApi();
                DateTime fechaEmision = fecha.GetNetworkTime();

                Ncotizacion cotizacion = new Ncotizacion();
                DataTable data = cotizacion.CotizacionPago(cotizacionID);
                DataTable detalle = cotizacion.Detalle(idCotizacion);

                string ejecutivo = data.Rows[0]["idUsuario"].ToString();
                string pass = data.Rows[0]["Contrasena"].ToString();

              
                string resultado = BoletaFacturaChile(data, detalle, boletaFolio, fechaEmision);

                if (resultado.Equals("Documento emitido correctamente"))
                {
                    // actualizar correlativo Boleta
                    cotizacion.ActualizaCorrelativoBoleta();

                    string estadoContrato = GrabaContrato(idCotizacion, boletaFolio, 1, fechaEmision.ToString("yyyy-MM-dd"), detalle);
                    string[] numeroDocumentos = estadoContrato.Split(',');
                    string contrato = numeroDocumentos[0].ToString();
                    string link = "Voucher.aspx?contrato_id=" + contrato;                   
                    Response.Redirect(link, false);
                }
                else
                {
                    // error al emitir boleta facturaChile
                    string link =  "Voucher.aspx?contrato_id=-1";
                    Response.Redirect(link, false);
                }
            }
            else
            {
                // no se encuentra el id de la cotizacion

                string link = string.Empty;

                switch (proyecto)
                {

                    case "SAM":
                        link = "Voucher.aspx?contrato_id=0";
                        break;
                    default:
                        break;
                }

                //
                // voucher de cada pagina
                Response.Redirect(link, false);
            }

        }
    }
}