using Negocio;
using System;
using System.Data;

namespace Web.cursos.adults
{
    public partial class Index : System.Web.UI.Page
    {
        public void HorarioSedes()
        {
            Ncursos ncursos = new Ncursos();
            DataTable data = ncursos.BuscarHorarioAdultos();

            if (data.Rows.Count > 0)
            {
                LabelInicios.Text = "Inicio de clases " + data.Rows[0]["Fecha Inicio"].ToString();

                DataTable moneda = new DataTable();
                DataTable provi = new DataTable();
                DataTable florida = new DataTable();
                DataTable online = new DataTable();

                moneda.Columns.Add("Programa");
                moneda.Columns.Add("Sede");
                moneda.Columns.Add("Dias");
                moneda.Columns.Add("Horas");
                moneda.Columns.Add("Inicio");

                provi.Columns.Add("Programa");
                provi.Columns.Add("Sede");
                provi.Columns.Add("Dias");
                provi.Columns.Add("Horas");
                provi.Columns.Add("Inicio");

                florida.Columns.Add("Programa");
                florida.Columns.Add("Sede");
                florida.Columns.Add("Dias");
                florida.Columns.Add("Horas");
                florida.Columns.Add("Inicio");

                online.Columns.Add("Programa");
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

                    dataRow["Programa"] = data.Rows[i]["Programa"].ToString();
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

                Boton("descripcion");

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
        }

        //public void HorarioSedesIntensivo(int curso)
        //{
        //    Ncursos ncursos = new Ncursos();
        //    DataTable data = ncursos.BuscarHorarioNivelTodasSedes(curso);

        //    DataTable moneda = new DataTable();
        //    DataTable provi = new DataTable();
        //    DataTable florida = new DataTable();
        //    DataTable online = new DataTable();

        //    moneda.Columns.Add("Sede");
        //    moneda.Columns.Add("Dias");
        //    moneda.Columns.Add("Horas");
        //    moneda.Columns.Add("Inicio");

        //    provi.Columns.Add("Sede");
        //    provi.Columns.Add("Dias");
        //    provi.Columns.Add("Horas");
        //    provi.Columns.Add("Inicio");

        //    florida.Columns.Add("Sede");
        //    florida.Columns.Add("Dias");
        //    florida.Columns.Add("Horas");
        //    florida.Columns.Add("Inicio");

        //    online.Columns.Add("Sede");
        //    online.Columns.Add("Dias");
        //    online.Columns.Add("Horas");
        //    online.Columns.Add("Inicio");

        //    DataRow dataRow;
        //    int sedeID;
        //    for (int i = 0; i < data.Rows.Count; i++)
        //    {
        //        sedeID = int.Parse(data.Rows[i]["idSede"].ToString());

        //        switch (sedeID)
        //        {
        //            case 1:
        //                dataRow = moneda.NewRow();
        //                break;
        //            case 2:
        //                dataRow = provi.NewRow();
        //                break;
        //            case 3:
        //                dataRow = florida.NewRow();
        //                break;
        //            case 4:
        //                dataRow = online.NewRow();
        //                break;
        //            default:
        //                dataRow = moneda.NewRow();
        //                break;
        //        }

        //        dataRow["Sede"] = data.Rows[i]["Sede"].ToString();
        //        dataRow["Dias"] = data.Rows[i]["Dias"].ToString();
        //        dataRow["Horas"] = data.Rows[i]["Hora Inicio"].ToString() + " | " + data.Rows[i]["Hora Termino"].ToString();
        //        dataRow["Inicio"] = data.Rows[i]["Fecha Inicio"].ToString();

        //        switch (sedeID)
        //        {
        //            case 1:
        //                moneda.Rows.Add(dataRow);
        //                break;
        //            case 2:
        //                provi.Rows.Add(dataRow);
        //                break;
        //            case 3:
        //                florida.Rows.Add(dataRow);
        //                break;
        //            case 4:
        //                online.Rows.Add(dataRow);
        //                break;
        //            default:
        //                moneda.Rows.Add(dataRow);
        //                break;
        //        }
        //    }

        //    bool horario = false;

        //    bool btn_moneda = false;
        //    bool btn_provi = false;
        //    bool btn_florida = false;
        //    bool btn_online = false;

        //    if (moneda.Rows.Count > 0)
        //    {
        //        btn_moneda = true;
        //        horario = true;
        //        div_m_80.Visible = true;
        //        DataListHorariosIntensivoMoneda.DataSource = moneda;
        //        DataListHorariosIntensivoMoneda.DataBind();
        //        LinkButtonM80.Visible = true;
        //        btn_m_80.Visible = true;
        //    }

        //    if (provi.Rows.Count > 0)
        //    {
        //        btn_provi = true;
        //        horario = true;
        //        DataListHorariosIntensivoProvi.DataSource = provi;
        //        DataListHorariosIntensivoProvi.DataBind();
        //        LinkButtonP80.Visible = true;
        //        btn_p_80.Visible = true;
        //    }

        //    if (florida.Rows.Count > 0)
        //    {
        //        btn_florida = true;
        //        horario = true;
        //        DataListHorariosIntensivoFlorida.DataSource = florida;
        //        DataListHorariosIntensivoFlorida.DataBind();
        //        LinkButtonF80.Visible = true;
        //        btn_f_80.Visible = true;
        //    }

        //    if (online.Rows.Count > 0)
        //    {
        //        btn_online = true;
        //        horario = true;
        //        DataListHorariosIntensivoOnline.DataSource = online;
        //        DataListHorariosIntensivoOnline.DataBind();
        //        LinkButtonO80.Visible = true;
        //        btn_o_80.Visible = true;
        //    }

        //    LinkButtonHorarioInt.Visible = horario;
        //    link_horario_80.Visible = horario;
        //}

        public void Boton(string click)
        {
            LinkButtonHorarioReg.Attributes.Clear();
            LinkButtonHorarioReg.Attributes.Add("class", "nav-link");
            div_horario_40.Visible = false;

            //LinkButtonHorarioInt.Attributes.Clear();
            //LinkButtonHorarioInt.Attributes.Add("class", "nav-link");
            //div_horario_80.Visible = false;

            LinkButtonDescripcion.Attributes.Clear();
            LinkButtonDescripcion.Attributes.Add("class", "nav-link");
            div_descripcion.Visible = false;

            LinkButtonObjetivo.Attributes.Clear();
            LinkButtonObjetivo.Attributes.Add("class", "nav-link");
            div_objetivos.Visible = false;

            LinkButtonNiveles.Attributes.Clear();
            LinkButtonNiveles.Attributes.Add("class", "nav-link");
            div_niveles.Visible = false;

            switch (click)
            {
                case "40":
                    LinkButtonHorarioReg.Attributes.Clear();
                    LinkButtonHorarioReg.Attributes.Add("class", "nav-link active");
                    div_horario_40.Visible = true;
                    break;
                //case "80":
                //    LinkButtonHorarioInt.Attributes.Clear();
                //    LinkButtonHorarioInt.Attributes.Add("class", "nav-link active");
                //    //div_horario_80.Visible = true;
                //    break;
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
                case "nivel":
                    LinkButtonNiveles.Attributes.Clear();
                    LinkButtonNiveles.Attributes.Add("class", "nav-link active");
                    div_niveles.Visible = true;
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

        //public void BotonSedes80(string click)
        //{
        //    LinkButtonM80.Attributes.Clear();
        //    LinkButtonM80.Attributes.Add("class", "btn btn-secondary text-white");
        //    div_m_80.Visible = false;

        //    LinkButtonP80.Attributes.Clear();
        //    LinkButtonP80.Attributes.Add("class", "btn btn-secondary text-white");
        //    div_p_80.Visible = false;

        //    LinkButtonF80.Attributes.Clear();
        //    LinkButtonF80.Attributes.Add("class", "btn btn-secondary text-white");
        //    div_f_80.Visible = false;

        //    LinkButtonO80.Attributes.Clear();
        //    LinkButtonO80.Attributes.Add("class", "btn btn-secondary text-white");
        //    div_o_80.Visible = false;

        //    switch (click)
        //    {
        //        case "m":
        //            LinkButtonM80.Attributes.Clear();
        //            LinkButtonM80.Attributes.Add("class", "btn btn-primary text-white");
        //            div_m_80.Visible = true;
        //            break;
        //        case "p":
        //            LinkButtonP80.Attributes.Clear();
        //            LinkButtonP80.Attributes.Add("class", "btn btn-primary text-white");
        //            div_p_80.Visible = true;
        //            break;
        //        case "f":
        //            LinkButtonF80.Attributes.Clear();
        //            LinkButtonF80.Attributes.Add("class", "btn btn-primary text-white");
        //            div_f_80.Visible = true;
        //            break;
        //        case "o":
        //            LinkButtonO80.Attributes.Clear();
        //            LinkButtonO80.Attributes.Add("class", "btn btn-primary text-white");
        //            div_o_80.Visible = true;
        //            break;
        //        default:
        //            break;
        //    }
        //}

        protected void Page_Load(object sender, EventArgs e)
        {
            MaintainScrollPositionOnPostBack = false;
            if (!IsPostBack)
            {
                HorarioSedes();
                //HorarioSedesIntensivo(65);
            }
        }

        protected void LinkButtonHorarioReg_Click(object sender, EventArgs e)
        {
            Boton("40");
        }

        protected void LinkButtonHorarioInt_Click(object sender, EventArgs e)
        {
            Boton("80");
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

        protected void LinkButtonNiveles_Click(object sender, EventArgs e)
        {
            Boton("nivel");
        }

       
    }
}