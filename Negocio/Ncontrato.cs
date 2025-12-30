using Datos;
using System;
using System.Data;

namespace Negocio
{
    public class Ncontrato
    {
        readonly Contrato GetContrato = new Contrato();

        public string Crear(int cotizacionID, string fechaContrato, int boletaID, int vendedorID)
        {
            return GetContrato.Ingresar(cotizacionID, 1, fechaContrato, boletaID, vendedorID);
        }

        public string CrearAnexo(int idContrato, int idEmpresa, string idAlumno, string idCurso, string fecha, int vendedor, int registroAcademico, int alumnoTipo)
        {
            DateTime dateTime = DateTime.Now;

            return GetContrato.IngresarDetalleSinLog(idContrato, idEmpresa, idAlumno, idCurso, fecha, vendedor, registroAcademico, alumnoTipo);
        }

        public DataTable PDFcontrato(int contrato)
        {
            return GetContrato.PdfContrato(contrato);
        }

        public DataTable PdfContratoJornadas(int contrato)
        {
            return GetContrato.PdfContratoJornadas(contrato);
        }

        public DataTable PdfContratoProgramasCursos(int contrato)
        {
            return GetContrato.PdfContratoProgramasCursos(contrato);
        }

        public DataTable PdfContratoSedes(int contrato)
        {
            return GetContrato.PdfContratoSedes(contrato);
        }

        public DataTable PdfContratoDetalle(int contrato, int detalle)
        {
            return GetContrato.PdfContratoDetalle(contrato, detalle);
        }

        public DataTable BuscarInfoPdfContrato(string contrato_id)
        {
            DataTable data = PDFcontrato(int.Parse(contrato_id));

            DataTable dataJornada = PdfContratoJornadas(int.Parse(contrato_id));
            string jornada = string.Empty;

            for (int i = 0; i < dataJornada.Rows.Count; i++)
            {
                if (jornada.Length == 0)
                {
                    jornada = dataJornada.Rows[i]["Nombre"].ToString();
                }
                else
                {
                    jornada = jornada + ", " + dataJornada.Rows[i]["Nombre"].ToString();
                }
            }

            DataTable dataPrograma = PdfContratoProgramasCursos(int.Parse(contrato_id));
            string programa = string.Empty;
            string curso = string.Empty;

            for (int i = 0; i < dataPrograma.Rows.Count; i++)
            {
                if (programa.Length == 0)
                {
                    programa = dataPrograma.Rows[i]["Nombre"].ToString();
                }
                else
                {
                    programa = programa + ", " + dataPrograma.Rows[i]["Nombre"].ToString();
                }

                if (curso.Length == 0)
                {
                    curso = dataPrograma.Rows[i]["NombreCurso"].ToString();
                }
                else
                {
                    curso = curso + ", " + dataPrograma.Rows[i]["NombreCurso"].ToString();
                }
            }

            DataTable dataSede = PdfContratoSedes(int.Parse(contrato_id));
            string sede = string.Empty;

            for (int i = 0; i < dataSede.Rows.Count; i++)
            {
                if (sede.Length == 0)
                {
                    sede = dataSede.Rows[i]["Nombre"].ToString();
                }
                else
                {
                    sede = sede + ", " + dataSede.Rows[i]["Nombre"].ToString();
                }
            }

            data.Rows[0]["Programa"] = programa;
            data.Rows[0]["Sede"] = sede;
            data.Rows[0]["Jornada"] = jornada;
            data.Rows[0]["NomCursos"] = curso;

            return data;
        }

        public DataTable InfoBienvenida(int contrato)
        {
            return GetContrato.InfoBienvenida(contrato);
        }

        public DataTable BuscarAnexosContrato(string contratoid)
        {
            return GetContrato.BuscarAnexosContrato(contratoid);
        }
    }
}
