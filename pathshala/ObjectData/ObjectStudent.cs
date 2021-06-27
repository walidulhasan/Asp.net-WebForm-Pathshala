using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace pathshala.ObjectData
{
    public class basicProfileStudent
    {
        public int basicProfileStudentId { get; set; }
        public int studentId { get; set; }
        public string InstructorImage { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string aboutYourSelf { get; set; }
        public string ws { get; set; }

        public string fb { get; set; }
        public string tw { get; set; }
        public string li { get; set; }
        public string yt { get; set; }
    }
    public static class ObjectStudent
    {
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<basicProfileStudent> GetCategories()
        {
            List<basicProfileStudent> studentList = new List<basicProfileStudent>();
            string sqlCmd = "SELECT * FROM tbl_basicProfileStudent";
            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(sqlCmd, con))
                {
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    basicProfileStudent ProfileStudent;
                    while (dr.Read())
                    {
                        ProfileStudent = new basicProfileStudent();
                        ProfileStudent.basicProfileStudentId = (int)dr["basicProfileStudentId"];
                        ProfileStudent.studentId = (int)dr["studentId"];
                        ProfileStudent.InstructorImage = dr["InstructorImage"].ToString();
                        ProfileStudent.firstName = dr["firstName"].ToString();
                        ProfileStudent.lastName = dr["lastName"].ToString();
                        ProfileStudent.aboutYourSelf = dr["aboutYourSelf"].ToString();
                        ProfileStudent.ws = dr["ws"].ToString();
                        ProfileStudent.fb = dr["fb"].ToString();
                        ProfileStudent.tw = dr["tw"].ToString();
                        ProfileStudent.li = dr["li"].ToString();
                        ProfileStudent.yt = dr["yt"].ToString();
                        studentList.Add(ProfileStudent);
                    }
                    dr.Close();
                }
            }
            return studentList;
        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public static void InsertCategory(basicProfileStudent ProfileStudent)
        {
            string sqlCmd = "INSERT INTO tbl_basicProfileStudent (studentId,InstructorImage,firstName,lastName,aboutYourSelf,ws,fb,tw,li,yt) VALUES (@studentId,@InstructorImage,@firstName,@lastName,@aboutYourSelf,@ws,@fb,@tw,@li,@yt)";
            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(sqlCmd, con))
                {
                    cmd.Parameters.AddWithValue("studentId", ProfileStudent.studentId);
                    cmd.Parameters.AddWithValue("InstructorImage", ProfileStudent.InstructorImage);
                    cmd.Parameters.AddWithValue("firstName", ProfileStudent.firstName);
                    cmd.Parameters.AddWithValue("lastName", ProfileStudent.lastName);
                    cmd.Parameters.AddWithValue("aboutYourSelf", ProfileStudent.aboutYourSelf);
                    cmd.Parameters.AddWithValue("ws", ProfileStudent.ws);
                    cmd.Parameters.AddWithValue("fb", ProfileStudent.fb);
                    cmd.Parameters.AddWithValue("li", ProfileStudent.li);
                    cmd.Parameters.AddWithValue("tw", ProfileStudent.tw);
                    cmd.Parameters.AddWithValue("yt", ProfileStudent.yt);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }

        [DataObjectMethod(DataObjectMethodType.Delete)]
        public static void DeleteCategory(basicProfileStudent ProfileStudent)
        {
            //int id = 0;
            string sqlCmd = "DELETE FROM tbl_basicProfileStudent WHERE basicProfileStudentId = @basicProfileStudentId";
            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(sqlCmd, con))
                {
                    cmd.Parameters.AddWithValue("basicProfileStudentId", ProfileStudent.basicProfileStudentId);
                    con.Open();
                    /*id= */
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            //return id;
        }

        [DataObjectMethod(DataObjectMethodType.Update)]
        public static void UpdateCategory(basicProfileStudent ProfileStudent)
        {
            string sql = "UPDATE tbl_basicProfileStudent SET studentId=@studentId,InstructorImage=@InstructorImage,firstName=@firstName,lastName=@lastName,aboutYourSelf=@aboutYourSelf,ws=@ws,fb=@fb,tw=@tw,li=@li,yt=@yt WHERE basicProfileStudentId = @basicProfileStudentId";

            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("basicProfileStudentId", ProfileStudent.basicProfileStudentId);
                    cmd.Parameters.AddWithValue("studentId", ProfileStudent.studentId);
                    cmd.Parameters.AddWithValue("InstructorImage", ProfileStudent.InstructorImage);
                    cmd.Parameters.AddWithValue("firstName", ProfileStudent.firstName);
                    cmd.Parameters.AddWithValue("lastName", ProfileStudent.lastName);
                    cmd.Parameters.AddWithValue("aboutYourSelf", ProfileStudent.aboutYourSelf);
                    cmd.Parameters.AddWithValue("ws", ProfileStudent.ws);
                    cmd.Parameters.AddWithValue("fb", ProfileStudent.fb);
                    cmd.Parameters.AddWithValue("li", ProfileStudent.li);
                    cmd.Parameters.AddWithValue("tw", ProfileStudent.tw);
                    cmd.Parameters.AddWithValue("yt", ProfileStudent.yt);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close(); ;
                }
            }
        }

        private static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings
                ["pathshalaDBCon"].ConnectionString;
        }
    }
}