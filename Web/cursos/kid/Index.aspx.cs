using Negocio;
using System;
using System.Data;

namespace Web.cursos.kid
{
    public partial class Index : System.Web.UI.Page
    {
        public void HorarioSedes()
        {
            Ncursos ncursos = new Ncursos();
            DataTable data = ncursos.BuscarHorarioKid();

            if (data.Rows.Count > 0)
            {
                btn_comprar.Visible = true;
                div_inicio.Visible = true;
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
                    btn_o_x.Visible = true;
                }

               
               
            }
            else
            {
                btn_comprar.Visible = false;
                div_inicio.Visible = false;               
            }
        }


     

        protected void Page_Load(object sender, EventArgs e)
        {
            MaintainScrollPositionOnPostBack = false;
            if (!IsPostBack)
            {
                HorarioSedes();

                string token = Convert.ToString(Request["tipo"]);


                if (token == "summer")
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
    }
}