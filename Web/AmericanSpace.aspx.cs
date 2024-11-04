using Negocio;
using System;
using System.Data;

namespace Web
{
    public partial class AmericanSpace : System.Web.UI.Page
    {
        public void CargaBanner()
        {
            div_banner_01.Visible = false;
            div_banner_02.Visible = false;
            div_banner_03.Visible = false;
            div_banner_04.Visible = false;
            div_banner_05.Visible = false;

            string tipoBanner;
            if (Request.Browser.IsMobileDevice)
            {
                tipoBanner = "mobil";
            }
            else
            {
                tipoBanner = "web";
            }

            NBanner nBanner = new NBanner();
            DataTable data = nBanner.BuscarAS();

            for (int i = 0; i < data.Rows.Count; i++)
            {
                int banner = int.Parse(data.Rows[i]["bannerid"].ToString());

                switch (banner)
                {
                    case 1:

                        if (tipoBanner == data.Rows[i]["tipo"].ToString())
                        {
                            banner_01.Src = "img/carouselAmerican/" + tipoBanner + "/" + data.Rows[i]["imagenUrl"].ToString();

                            if (data.Rows[i]["visible"].ToString() == "1")
                            {
                                div_banner_01.Visible = true;
                            }

                            link_banner_01.HRef = data.Rows[i]["link"].ToString();
                        }
                        break;
                    case 2:

                        if (tipoBanner == data.Rows[i]["tipo"].ToString())
                        {
                            banner_02.Src = "img/carouselAmerican/" + tipoBanner + "/" + data.Rows[i]["imagenUrl"].ToString();

                            if (data.Rows[i]["visible"].ToString() == "1")
                            {
                                div_banner_02.Visible = true;
                            }

                            link_banner_02.HRef = data.Rows[i]["link"].ToString();
                        }
                        break;
                    case 3:

                        if (tipoBanner == data.Rows[i]["tipo"].ToString())
                        {
                            banner_03.Src = "img/carouselAmerican/" + tipoBanner + "/" + data.Rows[i]["imagenUrl"].ToString();

                            if (data.Rows[i]["visible"].ToString() == "1")
                            {
                                div_banner_03.Visible = true;
                            }

                            link_banner_03.HRef = data.Rows[i]["link"].ToString();
                        }
                        break;
                    case 4:

                        if (tipoBanner == data.Rows[i]["tipo"].ToString())
                        {
                            banner_04.Src = "img/carouselAmerican/" + tipoBanner + "/" + data.Rows[i]["imagenUrl"].ToString();

                            if (data.Rows[i]["visible"].ToString() == "1")
                            {
                                div_banner_04.Visible = true;
                            }

                            link_banner_04.HRef = data.Rows[i]["link"].ToString();
                        }
                        break;
                    case 5:

                        if (tipoBanner == data.Rows[i]["tipo"].ToString())
                        {
                            banner_05.Src = "img/carouselAmerican/" + tipoBanner + "/" + data.Rows[i]["imagenUrl"].ToString();

                            if (data.Rows[i]["visible"].ToString() == "1")
                            {
                                div_banner_05.Visible = true;
                            }

                            link_banner_05.HRef = data.Rows[i]["link"].ToString();
                        }
                        break;
                    default:
                        break;
                }
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                CargaBanner();
            }
        }
    }
}