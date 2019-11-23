using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class AlumnoDni : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string dni = Request.Params["dni"];

            if (!Page.IsPostBack)
            {
                LblEstado.Text = dni;
            }

        }
    }
}