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

                if (moneda.Rows.Count > 0)
                {
                
                    div_m.Visible = true;
                    DataListHorariosRegularMoneda.DataSource = moneda;
                    DataListHorariosRegularMoneda.DataBind();
                    btn_m_x.Visible = true;
                }

                if (provi.Rows.Count > 0)
                {                  
                    DataListHorariosRegularProvi.DataSource = provi;
                    DataListHorariosRegularProvi.DataBind();
                    btn_p_x.Visible = true;
                }

                if (florida.Rows.Count > 0)
                {
                    DataListHorariosRegularFlorida.DataSource = florida;
                    DataListHorariosRegularFlorida.DataBind();
                    btn_f_x.Visible = true;
                }

                if (online.Rows.Count > 0)
                {
                    DataListHorariosRegularOnline.DataSource = online;
                    DataListHorariosRegularOnline.DataBind();
                    btn_o_x.Visible=true;
                }
            }
        }

       

        //public void Boton(string click)
        //{
        //    LinkButtonHorarioReg.Attributes.Clear();
        //    LinkButtonHorarioReg.Attributes.Add("class", "nav-link");
        //    div_horario_40.Visible = false;

        //    LinkButtonSummer.Attributes.Clear();
        //    LinkButtonSummer.Attributes.Add("class", "nav-link");
        //    div_summer.Visible = false;

        //    LinkButtonDescripcion.Attributes.Clear();
        //    LinkButtonDescripcion.Attributes.Add("class", "nav-link");
        //    div_descripcion.Visible = false;

        //    LinkButtonObjetivo.Attributes.Clear();
        //    LinkButtonObjetivo.Attributes.Add("class", "nav-link");
        //    div_objetivos.Visible = false;

        //    LinkButtonNiveles.Attributes.Clear();
        //    LinkButtonNiveles.Attributes.Add("class", "nav-link");
        //    div_niveles.Visible = false;

        //    switch (click)
        //    {
        //        case "40":
        //            LinkButtonHorarioReg.Attributes.Clear();
        //            LinkButtonHorarioReg.Attributes.Add("class", "nav-link active");
        //            div_horario_40.Visible = true;
        //            break;
        //        case "summer":
        //            LinkButtonSummer.Attributes.Clear();
        //            LinkButtonSummer.Attributes.Add("class", "nav-link active");
        //            div_summer.Visible = true;
        //            break;
        //        case "descripcion":
        //            LinkButtonDescripcion.Attributes.Clear();
        //            LinkButtonDescripcion.Attributes.Add("class", "nav-link active");
        //            div_descripcion.Visible = true;
        //            break;
        //        case "objetivo":
        //            LinkButtonObjetivo.Attributes.Clear();
        //            LinkButtonObjetivo.Attributes.Add("class", "nav-link active");
        //            div_objetivos.Visible = true;
        //            break;
        //        case "nivel":
        //            LinkButtonNiveles.Attributes.Clear();
        //            LinkButtonNiveles.Attributes.Add("class", "nav-link active");
        //            div_niveles.Visible = true;
        //            break;
        //        default:
        //            break;
        //    }
        //}

        //public void BotonSedes(string click)
        //{
        //    LinkButtonM.Attributes.Clear();
        //    LinkButtonM.Attributes.Add("class", "btn btn-secondary text-white");
        //    div_m.Visible = false;

        //    LinkButtonP.Attributes.Clear();
        //    LinkButtonP.Attributes.Add("class", "btn btn-secondary text-white");
        //    div_p.Visible = false;

        //    LinkButtonF.Attributes.Clear();
        //    LinkButtonF.Attributes.Add("class", "btn btn-secondary text-white");
        //    div_f.Visible = false;

        //    LinkButtonO.Attributes.Clear();
        //    LinkButtonO.Attributes.Add("class", "btn btn-secondary text-white");
        //    div_o.Visible = false;

        //    switch (click)
        //    {
        //        case "m":
        //            LinkButtonM.Attributes.Clear();
        //            LinkButtonM.Attributes.Add("class", "btn btn-primary text-white");
        //            div_m.Visible = true;
        //            break;
        //        case "p":
        //            LinkButtonP.Attributes.Clear();
        //            LinkButtonP.Attributes.Add("class", "btn btn-primary text-white");
        //            div_p.Visible = true;
        //            break;
        //        case "f":
        //            LinkButtonF.Attributes.Clear();
        //            LinkButtonF.Attributes.Add("class", "btn btn-primary text-white");
        //            div_f.Visible = true;
        //            break;
        //        case "o":
        //            LinkButtonO.Attributes.Clear();
        //            LinkButtonO.Attributes.Add("class", "btn btn-primary text-white");
        //            div_o.Visible = true;
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
                string token = Convert.ToString(Request["tipo"]);

                
                if(token == "summer")
                {
                    tab1tab.Attributes.Add("class", "nav-link");
                    tab2tab.Attributes.Add("class", "nav-link active");

                    tab1.Attributes.Add("class", "tab-pane fade");
                    tab2.Attributes.Add("class", "tab-pane fade show active");
                }
                else
                {                    
                    tab1tab.Attributes.Add("class", "nav-link active");                  
                    tab2tab.Attributes.Add("class", "nav-link");

                    tab1.Attributes.Add("class", "tab-pane fade show active");
                    tab2.Attributes.Add("class", "tab-pane fade");
                }
            }
        }

        //protected void LinkButtonHorarioReg_Click(object sender, EventArgs e)
        //{
        //    Boton("40");
        //}
              

        //protected void LinkButtonDescripcion_Click(object sender, EventArgs e)
        //{
        //    Boton("descripcion");
        //}

        //protected void LinkButtonObjetivo_Click(object sender, EventArgs e)
        //{
        //    Boton("objetivo");
        //}

        //protected void LinkButtonM_Click(object sender, EventArgs e)
        //{
        //    BotonSedes("m");
        //}

        //protected void LinkButtonP_Click(object sender, EventArgs e)
        //{
        //    BotonSedes("p");
        //}

        //protected void LinkButtonF_Click(object sender, EventArgs e)
        //{
        //    BotonSedes("f");
        //}

        //protected void LinkButtonO_Click(object sender, EventArgs e)
        //{
        //    BotonSedes("o");
        //}

        //protected void LinkButtonNiveles_Click(object sender, EventArgs e)
        //{
        //    Boton("nivel");
        //}

        //protected void LinkButtonSummer_Click(object sender, EventArgs e)
        //{
        //    Boton("summer");
        //}
    }
}