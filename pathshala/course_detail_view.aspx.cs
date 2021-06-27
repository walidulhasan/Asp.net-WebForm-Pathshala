using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pathshala
{
    public partial class course_detail_view : System.Web.UI.Page
    {
        Connection c = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            SqlCommand cmd = new SqlCommand(@"SELECT * FROM tbl_courseInformation WHERE courseId=" + id + "", c.con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            id_CrouseTitle.InnerText = (dt.Rows[0][1]).ToString();
            id_courseDescription.InnerText= (dt.Rows[0][2]).ToString();
            id_language.InnerText= (dt.Rows[0][3]).ToString();
            Image1.ImageUrl = "~/Uploads/" + (dt.Rows[0][8]).ToString();
        }
    }
}