using Negocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web.Admin.Banner
{
    public partial class AmericanSpace : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListarBanner.Items.Clear();
                ListarBanner.Items.Add("Seleccionar");
                ListarBanner.Items.Add("1");
                ListarBanner.Items.Add("2");
                ListarBanner.Items.Add("3");
                ListarBanner.Items.Add("4");
                ListarBanner.Items.Add("5");

                ListaTipoBanner.Items.Clear();
                ListaTipoBanner.Items.Add("Seleccionar");
                ListaTipoBanner.Items.Add("web");
                ListaTipoBanner.Items.Add("mobil");

            }
        }

        protected void ListaTipoBanner_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ListarBanner.SelectedIndex > 0)
            {
                btnEditar.Visible = true;
                int banner = ListarBanner.SelectedIndex;
                string tipoBanner = ListaTipoBanner.SelectedItem.Text;
                banner_preview.Attributes.Clear();

                NBanner nBanner = new NBanner();
                DataTable data = nBanner.BuscarAS();

                for (int i = 0; i < data.Rows.Count; i++)
                {

                    int id = int.Parse(data.Rows[i]["bannerid"].ToString());
                    string varTipo = data.Rows[i]["tipo"].ToString();
                    string estado = data.Rows[i]["visible"].ToString();

                    if (estado == "1")
                    {
                        estado = "visible";
                    }
                    else
                    {
                        estado = "oculto";
                    }


                    if (banner == id)
                    {
                        if (tipoBanner == varTipo)
                        {
                            if (tipoBanner == "mobil")
                            {
                                LabelBannerEstado.Text = estado;
                                banner_preview.Attributes.Clear();
                                banner_preview.Attributes.Add("class", "img-fluid");
                                banner_preview.Attributes.Add("style", "width: 20%");

                            }
                            else
                            {
                                LabelBannerEstado.Text = estado;
                                banner_preview.Attributes.Clear();
                                banner_preview.Attributes.Add("class", "img-fluid");
                            }

                            banner_preview.Src = "../../img/carouselAmerican/" + tipoBanner + "/" + data.Rows[i]["imagenUrl"].ToString();

                            break;
                        }
                    }

                }
            }
            else
            {
                btnEditar.Visible = false;
                banner_preview.Attributes.Clear();
            }
        }

        protected void ListarBanner_SelectedIndexChanged(object sender, EventArgs e)
        {
            div_admin.Visible = false;
            ListaTipoBanner.SelectedIndex = 0;
            ListaTipoBanner_SelectedIndexChanged(sender, e);
        }

        protected void LinkButtonEditar_Click(object sender, EventArgs e)
        {
            div_admin.Visible = true;          
            div_admin_img.Visible = true;
        }

        protected void LinkButtonGuardar_Click(object sender, EventArgs e)
        {
            string tipo = ListaTipoBanner.SelectedItem.Text;
            DateTime hoy = DateTime.Now;
            string nombre = hoy.ToString("yyyy");
            nombre = nombre + hoy.ToString("MM");
            nombre = nombre + hoy.ToString("dd");
            nombre = nombre + "-" + ListarBanner.SelectedIndex + "-" + tipo;

            string link;
            if (FileUpload1.HasFiles)
            {
                string archivo = Server.MapPath("../../img/carouselAmerican/" + tipo + "/");
                string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                nombre = nombre + extension;
                link = archivo + nombre;
                FileUpload1.SaveAs(link);
            }

            int bannerNum = ListarBanner.SelectedIndex;
            link = TextBoxUrl.Text;

            int activo = 0;

            if (RadioButtonV.Checked)
            {
                activo = 1;
            }

            NBanner banner = new NBanner();
            string resultado = banner.ActualizarAS(bannerNum, tipo, nombre, link, activo);

            if (resultado == "ok")
            {
                div_admin.Visible = false;
                div_admin_img.Visible = false;
                ListaTipoBanner_SelectedIndexChanged(sender, EventArgs.Empty);
            }
            else
            {
                LabelResultado.Text = "error " + resultado;
            }
        }
    }
}