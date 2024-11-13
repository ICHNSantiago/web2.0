using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;
using System.Xml.Serialization;

namespace Web.Inscripcion
{
    public class FacturaChileBoleta
    { /// <summary>
      /// Gets or sets xML.
      /// </summary>
        [XmlElement("Documento", typeof(CDATA))]
        public CDATA XmlDocumento { get; set; }

        /// <summary>
        /// Gets or sets.
        /// </summary>
        public int FolioBoleta { get; set; }

        /// <summary>
        /// Gets or sets.
        /// </summary>
        public string RUTRecep { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether gets or sets ddd.
        /// </summary>
        public bool VarRut { get; set; }

        /// <summary>
        /// Gets or sets.
        /// </summary>
        public string RznSocRecep { get; set; }

        /// <summary>
        /// Gets or sets.
        /// </summary>
        public string MntExe { get; set; }

        /// <summary>
        /// Gets or sets.
        /// </summary>
        public string EmailDistribucion { get; set; }

        /// <summary>
        /// Gets or sets.
        /// </summary>
        public string FchEmis { get; set; }

        /// <summary>
        /// Gets or sets.
        /// </summary>
        public string DirRecep { get; set; }

        /// <summary>
        /// Gets or sets.
        /// </summary>
        public string CmnaRecep { get; set; }

        /// <summary>
        /// Gets or sets Nombre del item1.
        /// </summary>
        public string NmbItem1 { get; set; }

        /// <summary>
        /// Gets or sets Nombre del item1.
        /// </summary>
        public int PrcItem1 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int QtyItem1 { get; set; }

        /// <summary>
        /// Gets or sets Nombre del item1.
        /// </summary>
        public string NmbItem2 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int QtyItem2 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int PrcItem2 { get; set; }

        /// <summary>
        /// Gets or sets Nombre del item1.
        /// </summary>
        public string NmbItem3 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int QtyItem3 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int PrcItem3 { get; set; }

        /// <summary>
        /// Gets or sets Nombre del item1.
        /// </summary>
        public string NmbItem4 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int QtyItem4 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int PrcItem4 { get; set; }

        /// <summary>
        /// Gets or sets Nombre del item1.
        /// </summary>
        public string NmbItem5 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int QtyItem5 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int PrcItem5 { get; set; }

        /// <summary>
        /// Gets or sets Nombre del item1.
        /// </summary>
        public string NmbItem6 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int QtyItem6 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int PrcItem6 { get; set; }

        /// <summary>
        /// Gets or sets Nombre del item1.
        /// </summary>
        public string NmbItem7 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int QtyItem7 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int PrcItem7 { get; set; }

        /// <summary>
        /// Gets or sets Nombre del item1.
        /// </summary>
        public string NmbItem8 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int QtyItem8 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int PrcItem8 { get; set; }

        /// <summary>
        /// Gets or sets Nombre del item1.
        /// </summary>
        public string NmbItem9 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int QtyItem9 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int PrcItem9 { get; set; }

        /// <summary>
        /// Gets or sets Nombre del item1.
        /// </summary>
        public string NmbItem10 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int QtyItem10 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int PrcItem10 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int MontoItem1 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int MontoItem2 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int MontoItem3 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int MontoItem4 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int MontoItem5 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int MontoItem6 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int MontoItem7 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int MontoItem8 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int MontoItem9 { get; set; }

        /// <summary>
        /// Gets or sets cantidad del item1.
        /// </summary>
        public int MontoItem10 { get; set; }


        /// <summary>
        /// Boleta beta.
        /// </summary>
        /// <param name="nUsuarioWS">usuario ws.</param>
        /// <returns>devuleve el estado de la generacion de la boleta.</returns>
        //public WSFacturaChile.emisionDocumentoRequestBody EmiteBoletaCertchile(string DscItem01, int descuento)
        //{
        //    if (VarRut)
        //    {
        //        int largo = RUTRecep.Length;

        //        if (largo >= 11)
        //        {
        //            RUTRecep = "66666666-6";
        //        }
        //    }
        //    else
        //    {
        //        RUTRecep = "66666666-6";
        //    }

        //    RznSocRecep = RznSocRecep.Replace("Ñ", "N");
        //    RznSocRecep = RznSocRecep.Replace("ñ", "n");

        //    RznSocRecep = RznSocRecep.Replace("Á", "A");
        //    RznSocRecep = RznSocRecep.Replace("á", "a");

        //    RznSocRecep = RznSocRecep.Replace("É", "E");
        //    RznSocRecep = RznSocRecep.Replace("é", "e");

        //    RznSocRecep = RznSocRecep.Replace("Í", "I");
        //    RznSocRecep = RznSocRecep.Replace("í", "i");

        //    RznSocRecep = RznSocRecep.Replace("Ó", "O");
        //    RznSocRecep = RznSocRecep.Replace("ó", "o");

        //    RznSocRecep = RznSocRecep.Replace("Ú", "U");
        //    RznSocRecep = RznSocRecep.Replace("ú", "u");

        //    DirRecep = DirRecep.Replace("Ñ", "N");
        //    DirRecep = DirRecep.Replace("ñ", "n");

        //    DirRecep = DirRecep.Replace("Á", "A");
        //    DirRecep = DirRecep.Replace("á", "a");

        //    DirRecep = DirRecep.Replace("É", "E");
        //    DirRecep = DirRecep.Replace("é", "e");

        //    DirRecep = DirRecep.Replace("Í", "I");
        //    DirRecep = DirRecep.Replace("í", "i");

        //    DirRecep = DirRecep.Replace("Ó", "O");
        //    DirRecep = DirRecep.Replace("ó", "o");

        //    DirRecep = DirRecep.Replace("Ú", "U");
        //    DirRecep = DirRecep.Replace("ú", "u");

        //    CmnaRecep = CmnaRecep.Replace("Ñ", "N");
        //    CmnaRecep = CmnaRecep.Replace("ñ", "n");

        //    CmnaRecep = CmnaRecep.Replace("Á", "A");
        //    CmnaRecep = CmnaRecep.Replace("á", "a");

        //    CmnaRecep = CmnaRecep.Replace("É", "E");
        //    CmnaRecep = CmnaRecep.Replace("é", "e");

        //    CmnaRecep = CmnaRecep.Replace("Í", "I");
        //    CmnaRecep = CmnaRecep.Replace("í", "i");

        //    CmnaRecep = CmnaRecep.Replace("Ó", "O");
        //    CmnaRecep = CmnaRecep.Replace("ó", "o");

        //    CmnaRecep = CmnaRecep.Replace("Ú", "U");
        //    CmnaRecep = CmnaRecep.Replace("ú", "u");

        //    NmbItem1 = NmbItem1.Replace("Ñ", "N");
        //    NmbItem1 = NmbItem1.Replace("ñ", "n");

        //    NmbItem2 = NmbItem2.Replace("Ñ", "N");
        //    NmbItem2 = NmbItem2.Replace("ñ", "n");

        //    NmbItem3 = NmbItem3.Replace("Ñ", "N");
        //    NmbItem3 = NmbItem3.Replace("ñ", "n");

        //    NmbItem4 = NmbItem4.Replace("Ñ", "N");
        //    NmbItem4 = NmbItem4.Replace("ñ", "n");

        //    NmbItem5 = NmbItem5.Replace("Ñ", "N");
        //    NmbItem5 = NmbItem5.Replace("ñ", "n");

        //    NmbItem6 = NmbItem6.Replace("Ñ", "N");
        //    NmbItem6 = NmbItem6.Replace("ñ", "n");

        //    NmbItem7 = NmbItem7.Replace("Ñ", "N");
        //    NmbItem7 = NmbItem7.Replace("ñ", "n");

        //    RUTRecep = RUTRecep.ToUpper();

        //    int cantidadItem = 1;

        //    string xml = "<DTE version='1.0'>" +
        //                     "<Documento ID='R76247993-1T41F" + FolioBoleta + "'>" +
        //                        "<Encabezado>" +
        //                            "<IdDoc>" +
        //                                "<TipoDTE>41</TipoDTE>" +
        //                                "<Folio>" + FolioBoleta + "</Folio>" +
        //                                "<FchEmis>" + FchEmis + "</FchEmis >" +
        //                                "<IndServicio>3</IndServicio>" +
        //                            "</IdDoc>" +
        //                            "<Emisor>" +
        //                                "<RUTEmisor>76247993-1</RUTEmisor>" +
        //                                "<RznSocEmisor>ORGANISMO TECNICO DE CAPACITACION INSTITUTO CHILENO NORTEAMERICANO LTDA.</RznSocEmisor>" +
        //                                "<GiroEmisor>ENSENANZA SUPERIOR EN CENTROS DE FORMACION TECNICA</GiroEmisor>" +
        //                                "<DirOrigen>MONEDA 1467</DirOrigen>" +
        //                                "<CmnaOrigen>SANTIAGO</CmnaOrigen>" +
        //                                "<CiudadOrigen>SANTIAGO</CiudadOrigen>" +
        //                            "</Emisor>" +
        //                            "<Receptor>" +
        //                                "<RUTRecep>" + RUTRecep + "</RUTRecep>" +
        //                                "<RznSocRecep>" + RznSocRecep + "</RznSocRecep>" +
        //                                "<DirRecep>" + DirRecep + "</DirRecep>" +
        //                                "<CmnaRecep>" + CmnaRecep + "</CmnaRecep>" +
        //                               "</Receptor>" +
        //                            "<Totales>" +
        //                                "<MntExe>" + MntExe + "</MntExe>" +
        //                                "<MntTotal>" + MntExe + "</MntTotal>" +
        //                            "</Totales>" +
        //                        "</Encabezado>";


        //    if (descuento > 0)
        //    {
        //        int varDestoAplicado = PrcItem1 - descuento;
        //        string descripcion = "DESCTO $" + descuento + " - "+DscItem01

        //        xml = xml + "<Detalle>" +
        //                              "<NroLinDet>" + cantidadItem.ToString() + "</NroLinDet>" +
        //                              "<IndExe>1</IndExe>" +
        //                              "<NmbItem>" + NmbItem1 + "</NmbItem>" +
        //                              "<DscItem> " + DscItem01 + " </DscItem >" +
        //                              "<QtyItem>" + QtyItem1 + "</QtyItem>" +
        //                              "<PrcItem>" + varDestoAplicado + "</PrcItem>" +
        //                              "<MontoItem>" + varDestoAplicado + "</MontoItem>" +
        //                          "</Detalle>";
        //    }
        //    else
        //    {
        //        xml = xml + "<Detalle>" +
        //                            "<NroLinDet>" + cantidadItem.ToString() + "</NroLinDet>" +
        //                            "<IndExe>1</IndExe>" +
        //                            "<NmbItem>" + NmbItem1 + "</NmbItem>" +
        //                            "<DscItem> " + DscItem01 + " </DscItem >" +
        //                            "<QtyItem>" + QtyItem1 + "</QtyItem>" +
        //                            "<PrcItem>" + PrcItem1 + "</PrcItem>" +
        //                            "<MontoItem>" + PrcItem1 + "</MontoItem>" +
        //                        "</Detalle>";
        //    }

        //    if (!NmbItem2.Equals(string.Empty))
        //    {
        //        //cantidadItem++;
        //        xml = xml + "<Detalle>" +
        //                            "<NroLinDet>" + cantidadItem.ToString() + "</NroLinDet>" +
        //                            "<IndExe>1</IndExe>" +
        //                            "<NmbItem>" + NmbItem2 + "</NmbItem>" +
        //                            "<DscItem> " + DscItem01 + " </DscItem >" +
        //                            "<QtyItem>" + QtyItem2 + "</QtyItem>" +
        //                            "<PrcItem>" + PrcItem2 + "</PrcItem>" +
        //                            "<MontoItem>" + PrcItem2 + "</MontoItem>" +
        //                        "</Detalle>";
        //    }

        //    if (!NmbItem3.Equals(string.Empty))
        //    {
        //        //cantidadItem++;
        //        xml = xml + "<Detalle>" +
        //                            "<NroLinDet>" + cantidadItem.ToString() + "</NroLinDet>" +
        //                            "<IndExe>1</IndExe>" +
        //                            "<NmbItem>" + NmbItem3 + "</NmbItem>" +
        //                            "<DscItem> " + DscItem01 + " </DscItem >" +
        //                            "<QtyItem>" + QtyItem3 + "</QtyItem>" +
        //                            "<PrcItem>" + PrcItem3 + "</PrcItem>" +
        //                            "<MontoItem>" + PrcItem3 + "</MontoItem>" +
        //                        "</Detalle>";
        //    }

        //    if (!NmbItem4.Equals(string.Empty))
        //    {
        //        //cantidadItem++;
        //        xml = xml + "<Detalle>" +
        //                            "<NroLinDet>" + cantidadItem.ToString() + "</NroLinDet>" +
        //                            "<IndExe>1</IndExe>" +
        //                            "<NmbItem>" + NmbItem4 + "</NmbItem>" +
        //                            "<DscItem> " + DscItem01 + " </DscItem >" +
        //                            "<QtyItem>" + QtyItem4 + "</QtyItem>" +
        //                            "<PrcItem>" + PrcItem4 + "</PrcItem>" +
        //                            "<MontoItem>" + PrcItem4 + "</MontoItem>" +
        //                        "</Detalle>";
        //    }

        //    if (!NmbItem5.Equals(string.Empty))
        //    {
        //        //cantidadItem++;
        //        xml = xml + "<Detalle>" +
        //                            "<NroLinDet>" + cantidadItem.ToString() + "</NroLinDet>" +
        //                            "<IndExe>1</IndExe>" +
        //                            "<NmbItem>" + NmbItem5 + "</NmbItem>" +
        //                            "<DscItem> " + DscItem01 + " </DscItem >" +
        //                            "<QtyItem>" + QtyItem5 + "</QtyItem>" +
        //                            "<PrcItem>" + PrcItem5 + "</PrcItem>" +
        //                            "<MontoItem>" + PrcItem5 + "</MontoItem>" +
        //                        "</Detalle>";
        //    }

        //    if (!NmbItem6.Equals(string.Empty))
        //    {
        //        xml = xml + "<Detalle>" +
        //                            "<NroLinDet>" + cantidadItem.ToString() + "</NroLinDet>" +
        //                            "<IndExe>1</IndExe>" +
        //                            "<NmbItem>" + NmbItem6 + "</NmbItem>" +
        //                            "<DscItem> " + DscItem01 + " </DscItem >" +
        //                            "<QtyItem>" + QtyItem6 + "</QtyItem>" +
        //                            "<PrcItem>" + PrcItem6 + "</PrcItem>" +
        //                            "<MontoItem>" + PrcItem6 + "</MontoItem>" +
        //                        "</Detalle>";
        //    }

        //    if (!NmbItem7.Equals(string.Empty))
        //    {
        //        xml = xml + "<Detalle>" +
        //                            "<NroLinDet>" + cantidadItem.ToString() + "</NroLinDet>" +
        //                            "<IndExe>1</IndExe>" +
        //                            "<NmbItem>" + NmbItem7 + "</NmbItem>" +
        //                            "<DscItem> " + DscItem01 + " </DscItem >" +
        //                            "<QtyItem>" + QtyItem7 + "</QtyItem>" +
        //                            "<PrcItem>" + PrcItem7 + "</PrcItem>" +
        //                            "<MontoItem>" + PrcItem7 + "</MontoItem>" +
        //                        "</Detalle>";
        //    }

        //    if (!NmbItem8.Equals(string.Empty))
        //    {
        //        xml = xml + "<Detalle>" +
        //                            "<NroLinDet>" + cantidadItem.ToString() + "</NroLinDet>" +
        //                            "<IndExe>1</IndExe>" +
        //                            "<NmbItem>" + NmbItem8 + "</NmbItem>" +
        //                            "<DscItem> " + DscItem01 + " </DscItem >" +
        //                            "<QtyItem>" + QtyItem8 + "</QtyItem>" +
        //                            "<PrcItem>" + PrcItem8 + "</PrcItem>" +
        //                            "<MontoItem>" + PrcItem8 + "</MontoItem>" +
        //                        "</Detalle>";
        //    }

        //    if (!NmbItem9.Equals(string.Empty))
        //    {
        //        xml = xml + "<Detalle>" +
        //                            "<NroLinDet>" + cantidadItem.ToString() + "</NroLinDet>" +
        //                            "<IndExe>1</IndExe>" +
        //                            "<NmbItem>" + NmbItem9 + "</NmbItem>" +
        //                            "<DscItem> " + DscItem01 + " </DscItem >" +
        //                            "<QtyItem>" + QtyItem9 + "</QtyItem>" +
        //                            "<PrcItem>" + PrcItem9 + "</PrcItem>" +
        //                            "<MontoItem>" + PrcItem9 + "</MontoItem>" +
        //                        "</Detalle>";
        //    }

        //    if (!NmbItem10.Equals(string.Empty))
        //    {
        //        xml = xml + "<Detalle>" +
        //                            "<NroLinDet>" + cantidadItem.ToString() + "</NroLinDet>" +
        //                            "<IndExe>1</IndExe>" +
        //                            "<NmbItem>" + NmbItem10 + "</NmbItem>" +
        //                            "<DscItem> " + DscItem01 + " </DscItem >" +
        //                            "<QtyItem>" + QtyItem10 + "</QtyItem>" +
        //                            "<PrcItem>" + PrcItem10 + "</PrcItem>" +
        //                            "<MontoItem>" + PrcItem10 + "</MontoItem>" +
        //                        "</Detalle>";
        //    }

        //    xml = xml + "</Documento>" +
        //                 "</DTE>";
        //    return GenerarBoletaBeta(xml);
        //}
        /// <summary>
        /// Boleta beta.
        /// </summary>
        /// <param name="nUsuarioWS">usuario ws.</param>
        /// <returns>devuleve el estado de la generacion de la boleta.</returns>
        public WSFacturaChile.emisionDocumentoRequestBody EmiteBoletaCertchile(string DscItem01, string DscItem02, int descuento, int catnidadCursos)
        {
            if (VarRut)
            {
                int largo = RUTRecep.Length;

                if (largo >= 11)
                {
                    RUTRecep = "66666666-6";
                }
            }
            else
            {
                RUTRecep = "66666666-6";
            }

            RznSocRecep = RznSocRecep.Replace("Ñ", "N");
            RznSocRecep = RznSocRecep.Replace("ñ", "n");

            RznSocRecep = RznSocRecep.Replace("Á", "A");
            RznSocRecep = RznSocRecep.Replace("á", "a");

            RznSocRecep = RznSocRecep.Replace("É", "E");
            RznSocRecep = RznSocRecep.Replace("é", "e");

            RznSocRecep = RznSocRecep.Replace("Í", "I");
            RznSocRecep = RznSocRecep.Replace("í", "i");

            RznSocRecep = RznSocRecep.Replace("Ó", "O");
            RznSocRecep = RznSocRecep.Replace("ó", "o");

            RznSocRecep = RznSocRecep.Replace("Ú", "U");
            RznSocRecep = RznSocRecep.Replace("ú", "u");

            DirRecep = DirRecep.Replace("Ñ", "N");
            DirRecep = DirRecep.Replace("ñ", "n");

            DirRecep = DirRecep.Replace("Á", "A");
            DirRecep = DirRecep.Replace("á", "a");

            DirRecep = DirRecep.Replace("É", "E");
            DirRecep = DirRecep.Replace("é", "e");

            DirRecep = DirRecep.Replace("Í", "I");
            DirRecep = DirRecep.Replace("í", "i");

            DirRecep = DirRecep.Replace("Ó", "O");
            DirRecep = DirRecep.Replace("ó", "o");

            DirRecep = DirRecep.Replace("Ú", "U");
            DirRecep = DirRecep.Replace("ú", "u");

            CmnaRecep = CmnaRecep.Replace("Ñ", "N");
            CmnaRecep = CmnaRecep.Replace("ñ", "n");

            CmnaRecep = CmnaRecep.Replace("Á", "A");
            CmnaRecep = CmnaRecep.Replace("á", "a");

            CmnaRecep = CmnaRecep.Replace("É", "E");
            CmnaRecep = CmnaRecep.Replace("é", "e");

            CmnaRecep = CmnaRecep.Replace("Í", "I");
            CmnaRecep = CmnaRecep.Replace("í", "i");

            CmnaRecep = CmnaRecep.Replace("Ó", "O");
            CmnaRecep = CmnaRecep.Replace("ó", "o");

            CmnaRecep = CmnaRecep.Replace("Ú", "U");
            CmnaRecep = CmnaRecep.Replace("ú", "u");

            NmbItem1 = NmbItem1.Replace("Ñ", "N");
            NmbItem1 = NmbItem1.Replace("ñ", "n");

            NmbItem2 = NmbItem2.Replace("Ñ", "N");
            NmbItem2 = NmbItem2.Replace("ñ", "n");

            NmbItem3 = NmbItem3.Replace("Ñ", "N");
            NmbItem3 = NmbItem3.Replace("ñ", "n");

            NmbItem4 = NmbItem4.Replace("Ñ", "N");
            NmbItem4 = NmbItem4.Replace("ñ", "n");

            NmbItem5 = NmbItem5.Replace("Ñ", "N");
            NmbItem5 = NmbItem5.Replace("ñ", "n");

            NmbItem6 = NmbItem6.Replace("Ñ", "N");
            NmbItem6 = NmbItem6.Replace("ñ", "n");

            NmbItem7 = NmbItem7.Replace("Ñ", "N");
            NmbItem7 = NmbItem7.Replace("ñ", "n");

            RUTRecep = RUTRecep.ToUpper();

            string xml = "<DTE version='1.0'>" +
                             "<Documento ID='R76247993-1T41F" + FolioBoleta + "'>" +
                                "<Encabezado>" +
                                    "<IdDoc>" +
                                        "<TipoDTE>41</TipoDTE>" +
                                        "<Folio>" + FolioBoleta + "</Folio>" +
                                        "<FchEmis>" + FchEmis + "</FchEmis >" +
                                        "<IndServicio>3</IndServicio>" +
                                    "</IdDoc>" +
                                    "<Emisor>" +
                                        "<RUTEmisor>76247993-1</RUTEmisor>" +
                                        "<RznSocEmisor>ORGANISMO TECNICO DE CAPACITACION INSTITUTO CHILENO NORTEAMERICANO LTDA.</RznSocEmisor>" +
                                        "<GiroEmisor>ENSENANZA SUPERIOR EN CENTROS DE FORMACION TECNICA</GiroEmisor>" +
                                        "<DirOrigen>MONEDA 1467</DirOrigen>" +
                                        "<CmnaOrigen>SANTIAGO</CmnaOrigen>" +
                                        "<CiudadOrigen>SANTIAGO</CiudadOrigen>" +
                                    "</Emisor>" +
                                    "<Receptor>" +
                                        "<RUTRecep>" + RUTRecep + "</RUTRecep>" +
                                        "<RznSocRecep>" + RznSocRecep + "</RznSocRecep>" +
                                        "<DirRecep>" + DirRecep + "</DirRecep>" +
                                        "<CmnaRecep>" + CmnaRecep + "</CmnaRecep>" +
                                       "</Receptor>" +
                                    "<Totales>" +
                                        "<MntExe>" + MntExe + "</MntExe>" +
                                        "<MntTotal>" + MntExe + "</MntTotal>" +
                                    "</Totales>" +
                                "</Encabezado>";

            xml = xml + "<Detalle>" +
                                 "<NroLinDet>1</NroLinDet>" +
                                 "<IndExe>1</IndExe>" +
                                 "<NmbItem>" + NmbItem1 + "</NmbItem>";

            if (catnidadCursos == 1)
            {
                xml = xml + "<DscItem> " + DscItem01 + " </DscItem >";
            }
            else
            {
                xml = xml + "<DscItem> " + DscItem02 + " </DscItem >";
            }

            xml = xml + "<QtyItem>" + QtyItem1 + "</QtyItem>" +
                                    "<PrcItem>" + PrcItem1 + "</PrcItem>" +
                                    "<MontoItem>" + PrcItem1 + "</MontoItem>" +

                                    "</Detalle>";

            if (!NmbItem2.Equals(string.Empty))
            {
                //cantidadItem++;
                xml = xml + "<Detalle>" +
                                    "<NroLinDet>2</NroLinDet>" +
                                    "<IndExe>1</IndExe>" +
                                    "<NmbItem>" + NmbItem2 + "</NmbItem>";
                if (catnidadCursos == 2)
                {
                    xml = xml + "<DscItem> " + DscItem01 + " </DscItem >";
                }
                else
                {
                    xml = xml + "<DscItem> " + DscItem02 + " </DscItem >";
                }

                xml = xml + "<QtyItem>" + QtyItem2 + "</QtyItem>" +
                                    "<PrcItem>" + PrcItem2 + "</PrcItem>" +
                                    "<MontoItem>" + PrcItem2 + "</MontoItem>" +
                                "</Detalle>";
            }

            if (!NmbItem3.Equals(string.Empty))
            {
                //cantidadItem++;
                xml = xml + "<Detalle>" +
                                    "<NroLinDet>3</NroLinDet>" +
                                    "<IndExe>1</IndExe>" +
                                    "<NmbItem>" + NmbItem3 + "</NmbItem>";
                if (catnidadCursos == 3)
                {
                    xml = xml + "<DscItem> " + DscItem01 + " </DscItem >";
                }
                else
                {
                    xml = xml + "<DscItem> " + DscItem02 + " </DscItem >";
                }

                xml = xml + "<QtyItem>" + QtyItem3 + "</QtyItem>" +
                                    "<PrcItem>" + PrcItem3 + "</PrcItem>" +
                                    "<MontoItem>" + PrcItem3 + "</MontoItem>" +
                                "</Detalle>";
            }

            if (!NmbItem4.Equals(string.Empty))
            {
                //cantidadItem++;
                xml = xml + "<Detalle>" +
                                    "<NroLinDet>4</NroLinDet>" +
                                    "<IndExe>1</IndExe>" +
                                    "<NmbItem>" + NmbItem4 + "</NmbItem>";
                if (catnidadCursos == 4)
                {
                    xml = xml + "<DscItem> " + DscItem01 + " </DscItem >";
                }
                else
                {
                    xml = xml + "<DscItem> " + DscItem02 + " </DscItem >";
                }

                xml = xml + "<QtyItem>" + QtyItem4 + "</QtyItem>" +
                                    "<PrcItem>" + PrcItem4 + "</PrcItem>" +
                                    "<MontoItem>" + PrcItem4 + "</MontoItem>" +
                                "</Detalle>";
            }

            if (!NmbItem5.Equals(string.Empty))
            {
                //cantidadItem++;
                xml = xml + "<Detalle>" +
                                    "<NroLinDet>5</NroLinDet>" +
                                    "<IndExe>1</IndExe>" +
                                    "<NmbItem>" + NmbItem5 + "</NmbItem>";


                if (catnidadCursos == 5)
                {
                    xml = xml + "<DscItem> " + DscItem01 + " </DscItem >";
                }
                else
                {
                    xml = xml + "<DscItem> " + DscItem02 + " </DscItem >";
                }

                xml = xml + "<QtyItem>" + QtyItem5 + "</QtyItem>" +
                                    "<PrcItem>" + PrcItem5 + "</PrcItem>" +
                                    "<MontoItem>" + PrcItem5 + "</MontoItem>" +
                                "</Detalle>";
            }

            if (!NmbItem6.Equals(string.Empty))
            {
                xml = xml + "<Detalle>" +
                                    "<NroLinDet>6</NroLinDet>" +
                                    "<IndExe>1</IndExe>" +
                                    "<NmbItem>" + NmbItem6 + "</NmbItem>";


                if (catnidadCursos == 6)
                {
                    xml = xml + "<DscItem> " + DscItem01 + " </DscItem >";
                }
                else
                {
                    xml = xml + "<DscItem> " + DscItem02 + " </DscItem >";
                }


                xml = xml + "<QtyItem>" + QtyItem6 + "</QtyItem>" +
                                    "<PrcItem>" + PrcItem6 + "</PrcItem>" +
                                    "<MontoItem>" + PrcItem6 + "</MontoItem>" +
                                "</Detalle>";
            }

            if (!NmbItem7.Equals(string.Empty))
            {
                xml = xml + "<Detalle>" +
                                    "<NroLinDet>7</NroLinDet>" +
                                    "<IndExe>1</IndExe>" +
                                    "<NmbItem>" + NmbItem7 + "</NmbItem>";



                if (catnidadCursos == 7)
                {
                    xml = xml + "<DscItem> " + DscItem01 + " </DscItem >";
                }
                else
                {
                    xml = xml + "<DscItem> " + DscItem02 + " </DscItem >";
                }


                xml = xml + "<QtyItem>" + QtyItem7 + "</QtyItem>" +
                                    "<PrcItem>" + PrcItem7 + "</PrcItem>" +
                                    "<MontoItem>" + PrcItem7 + "</MontoItem>" +
                                "</Detalle>";
            }

            if (!NmbItem8.Equals(string.Empty))
            {
                xml = xml + "<Detalle>" +
                                    "<NroLinDet>8</NroLinDet>" +
                                    "<IndExe>1</IndExe>" +
                                    "<NmbItem>" + NmbItem8 + "</NmbItem>";

                if (catnidadCursos == 8)
                {
                    xml = xml + "<DscItem> " + DscItem01 + " </DscItem >";
                }
                else
                {
                    xml = xml + "<DscItem> " + DscItem02 + " </DscItem >";
                }

                xml = xml + "<QtyItem>" + QtyItem8 + "</QtyItem>" +
                                    "<PrcItem>" + PrcItem8 + "</PrcItem>" +
                                    "<MontoItem>" + PrcItem8 + "</MontoItem>" +
                                "</Detalle>";
            }

            if (!NmbItem9.Equals(string.Empty))
            {
                xml = xml + "<Detalle>" +
                                    "<NroLinDet>9</NroLinDet>" +
                                    "<IndExe>1</IndExe>" +
                                    "<NmbItem>" + NmbItem9 + "</NmbItem>";
                if (catnidadCursos == 9)
                {
                    xml = xml + "<DscItem> " + DscItem01 + " </DscItem >";
                }
                else
                {
                    xml = xml + "<DscItem> " + DscItem02 + " </DscItem >";
                }

                xml = xml + "<QtyItem>" + QtyItem9 + "</QtyItem>" +
                                    "<PrcItem>" + PrcItem9 + "</PrcItem>" +
                                    "<MontoItem>" + PrcItem9 + "</MontoItem>" +
                                "</Detalle>";
            }

            if (!NmbItem10.Equals(string.Empty))
            {
                xml = xml + "<Detalle>" +
                                    "<NroLinDet>10</NroLinDet>" +
                                    "<IndExe>1</IndExe>" +
                                    "<NmbItem>" + NmbItem10 + "</NmbItem>";
                if (catnidadCursos == 10)
                {
                    xml = xml + "<DscItem> " + DscItem01 + " </DscItem >";
                }
                else
                {
                    xml = xml + "<DscItem> " + DscItem02 + " </DscItem >";
                }

                xml = xml +

                                    "<QtyItem>" + QtyItem10 + "</QtyItem>" +
                                    "<PrcItem>" + PrcItem10 + "</PrcItem>" +
                                    "<MontoItem>" + PrcItem10 + "</MontoItem>" +
                                "</Detalle>";
            }

            xml = xml + "</Documento>" +
                         "</DTE>";
            return GenerarBoletaBeta(xml);
        }

        /// <summary>
        /// Metodo que geneta la boleta electronica en facturaChile.
        /// </summary>
        /// <param name="xml">xml con la informacion para generar la boleta Electronica.</param>
        /// <returns>Devuelve el estado de la emision del documento.</returns>
        public WSFacturaChile.emisionDocumentoRequestBody GenerarBoletaBeta(string xml)
        {
            WSFacturaChile.WSServiciosSoapClient soapClient = new WSFacturaChile.WSServiciosSoapClient();
            WSFacturaChile.emisionDocumentoRequestBody requestBody = new WSFacturaChile.emisionDocumentoRequestBody();

            WSFacturaChile.DatosEmision emision = new WSFacturaChile.DatosEmision
            {
                Token = "F5141D84-AFEE-F095-6C4C-1E7B4395EF98",
                RutEmisor = "76247993-1",
                RutReceptor = RUTRecep,
                TipoDocumento = "41",
                Documento = xml,
                GenerarPDF = true,
                Folio = FolioBoleta.ToString(),
                Resultado = 0,
                Identificador = "0",
                Mensaje = "0",
                PDFBase64 = "0",
            };

            requestBody.oDatosEmision = soapClient.emisionDocumento(emision);

            return requestBody;
        }
    }
}