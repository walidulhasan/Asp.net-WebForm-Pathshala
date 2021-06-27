using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace pathshala
{
    public class Connection
    {
        public SqlConnection con = new SqlConnection(@"Data Source = WALIDULHASAN\MAHMUDSABUJ; Initial Catalog = pathshalaDB; Integrated Security = True");
    }
}