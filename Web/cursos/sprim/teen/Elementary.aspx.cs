using Negocio;
using System;
using System.Data;

namespace Web.cursos.sprim.teen
{
    public partial class Elementary : System.Web.UI.Page
    {
        public void HorarioSedes(int curso)
        {
            Ncursos ncursos = new Ncursos();
            // DataTable data = ncursos.BuscarHorarioNivelTodasSedes(curso);
            DataTable data = new DataTable();

            DataTable moneda = new DataTable();
            DataTable provi = new DataTable();
            DataTable florida = new DataTable();
            DataTable online = new DataTable();

            moneda.Columns.Add("Sede");
            moneda.Columns.Add("Dias");
            moneda.Columns.Add("Horas");
            moneda.Columns.Add("Inicio");

            provi.Columns.Add("Sede");
            provi.Columns.Add("Dias");
            provi.Columns.Add("Horas");
            provi.Columns.Add("Inicio");

            florida.Columns.Add("Sede");
            florida.Columns.Add("Dias");
            florida.Columns.Add("Horas");
            florida.Columns.Add("Inicio");

            online.Columns.Add("Sede");
            online.Columns.Add("Dias");
            online.Columns.Add("Horas");
            online.Columns.Add("Inicio");

            DataRow dataRow;
            int sedeID;
            for (int i = 0; i < data.Rows.Count; i++)
            {
                sedeID = int.Parse(data.Rows[i]["idSede"].ToString());

                switch (sedeID)
                {
                    case 1:
                        dataRow = moneda.NewRow();
                        break;
                    case 2:
                        dataRow = provi.NewRow();
                        break;
                    case 3:
                        dataRow = florida.NewRow();
                        break;
                    case 4:
                        dataRow = online.NewRow();
                        break;
                    default:
                        dataRow = moneda.NewRow();
                        break;
                }

                dataRow["Sede"] = data.Rows[i]["Sede"].ToString();
                dataRow["Dias"] = data.Rows[i]["Dias"].ToString();
                dataRow["Horas"] = data.Rows[i]["Hora Inicio"].ToString() + " | " + data.Rows[i]["Hora Termino"].ToString();
                dataRow["Inicio"] = data.Rows[i]["Fecha Inicio"].ToString();

                switch (sedeID)
                {
                    case 1:
                        moneda.Rows.Add(dataRow);
                        break;
                    case 2:
                        provi.Rows.Add(dataRow);
                        break;
                    case 3:
                        florida.Rows.Add(dataRow);
                        break;
                    case 4:
                        online.Rows.Add(dataRow);
                        break;
                    default:
                        moneda.Rows.Add(dataRow);
                        break;
                }
            }

            bool horario = false;

            bool btn_moneda = false;
            bool btn_provi = false;
            bool btn_florida = false;
            bool btn_online = false;

            if (moneda.Rows.Count > 0)
            {
                btn_moneda = true;
                horario = true;
                div_m.Visible = true;
                DataListHorariosRegularMoneda.DataSource = moneda;
                DataListHorariosRegularMoneda.DataBind();
                LinkButtonM.Visible = true;
                btn_m.Visible = true;
            }

            if (provi.Rows.Count > 0)
            {
                btn_provi = true;
                horario = true;
                DataListHorariosRegularProvi.DataSource = provi;
                DataListHorariosRegularProvi.DataBind();
                LinkButtonP.Visible = true;
                btn_p.Visible = true;
            }

            if (florida.Rows.Count > 0)
            {
                btn_florida = true;
                horario = true;
                DataListHorariosRegularFlorida.DataSource = florida;
                DataListHorariosRegularFlorida.DataBind();
                LinkButtonF.Visible = true;
                btn_f.Visible = true;
            }

            if (online.Rows.Count > 0)
            {
                btn_online = true;
                horario = true;
                DataListHorariosRegularOnline.DataSource = online;
                DataListHorariosRegularOnline.DataBind();
                LinkButtonO.Visible = true;
                btn_o.Visible = true;
            }

            LinkButtonHorarioReg.Visible = horario;
            link_horario_40.Visible = horario;
            if (horario)
            {
                Boton("40");
            }
            else
            {
                Boton("descripcion");
            }

            if (btn_moneda)
            {
                BotonSedes("m");
            }
            else
            {
                if (btn_provi)
                {
                    BotonSedes("p");
                }
                else
                {
                    if (btn_florida)
                    {
                        BotonSedes("f");
                    }
                    else
                    {
                        if (btn_online)
                        {
                            BotonSedes("o");
                        }
                    }
                }
            }
        }

        public void Boton(string click)
        {
            LinkButtonHorarioReg.Attributes.Clear();
            LinkButtonHorarioReg.Attributes.Add("class", "nav-link");
            div_horario_40.Visible = false;

            LinkButtonDescripcion.Attributes.Clear();
            LinkButtonDescripcion.Attributes.Add("class", "nav-link");
            div_descripcion.Visible = false;

            LinkButtonObjetivo.Attributes.Clear();
            LinkButtonObjetivo.Attributes.Add("class", "nav-link");
            div_objetivos.Visible = false;

            switch (click)
            {
                case "40":
                    LinkButtonHorarioReg.Attributes.Clear();
                    LinkButtonHorarioReg.Attributes.Add("class", "nav-link active");
                    div_horario_40.Visible = true;
                    break;
                case "descripcion":
                    LinkButtonDescripcion.Attributes.Clear();
                    LinkButtonDescripcion.Attributes.Add("class", "nav-link active");
                    div_descripcion.Visible = true;
                    break;
                case "objetivo":
                    LinkButtonObjetivo.Attributes.Clear();
                    LinkButtonObjetivo.Attributes.Add("class", "nav-link active");
                    div_objetivos.Visible = true;
                    break;
                default:
                    break;
            }
        }

        public void BotonSedes(string click)
        {
            LinkButtonM.Attributes.Clear();
            LinkButtonM.Attributes.Add("class", "btn btn-secondary text-white");
            div_m.Visible = false;

            LinkButtonP.Attributes.Clear();
            LinkButtonP.Attributes.Add("class", "btn btn-secondary text-white");
            div_p.Visible = false;

            LinkButtonF.Attributes.Clear();
            LinkButtonF.Attributes.Add("class", "btn btn-secondary text-white");
            div_f.Visible = false;

            LinkButtonO.Attributes.Clear();
            LinkButtonO.Attributes.Add("class", "btn btn-secondary text-white");
            div_o.Visible = false;

            switch (click)
            {
                case "m":
                    LinkButtonM.Attributes.Clear();
                    LinkButtonM.Attributes.Add("class", "btn btn-primary text-white");
                    div_m.Visible = true;
                    break;
                case "p":
                    LinkButtonP.Attributes.Clear();
                    LinkButtonP.Attributes.Add("class", "btn btn-primary text-white");
                    div_p.Visible = true;
                    break;
                case "f":
                    LinkButtonF.Attributes.Clear();
                    LinkButtonF.Attributes.Add("class", "btn btn-primary text-white");
                    div_f.Visible = true;
                    break;
                case "o":
                    LinkButtonO.Attributes.Clear();
                    LinkButtonO.Attributes.Add("class", "btn btn-primary text-white");
                    div_o.Visible = true;
                    break;
                default:
                    break;
            }
        }

        public void CargaTarifas()
        {
            Ncursos ncursos = new Ncursos();
            DataTable data = ncursos.BuscarTarifas(59);

            if (data.Rows.Count > 0)
            {
                table_tarifas.Visible = true;

                LabelTarifaRegular.Text = int.Parse(data.Rows[0]["TarifaIndividual"].ToString()).ToString("n0");
            }
            else
            {
                table_tarifas.Visible = false;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            MaintainScrollPositionOnPostBack = false;
            if (!IsPostBack)
            {
                HorarioSedes(236);
                CargaTarifas();
            }
        }

        protected void LinkButtonHorarioReg_Click(object sender, EventArgs e)
        {
            Boton("40");
        }

        protected void LinkButtonDescripcion_Click(object sender, EventArgs e)
        {
            Boton("descripcion");
        }

        protected void LinkButtonObjetivo_Click(object sender, EventArgs e)
        {
            Boton("objetivo");
        }

        protected void LinkButtonM_Click(object sender, EventArgs e)
        {
            BotonSedes("m");
        }

        protected void LinkButtonP_Click(object sender, EventArgs e)
        {
            BotonSedes("p");
        }

        protected void LinkButtonF_Click(object sender, EventArgs e)
        {
            BotonSedes("f");
        }

        protected void LinkButtonO_Click(object sender, EventArgs e)
        {
            BotonSedes("o");
        }
    }
}