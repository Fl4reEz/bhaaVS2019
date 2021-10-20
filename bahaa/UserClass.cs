using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;

namespace bahaa
{
    public class UserClass
    {
        public string FName { get; set; }
        public string LName { get; set; }
        public string Username { get; set; }
        public string Gender { get; set; }
        public string Email { get; set; }
        public string Birth { get; set; }
        public string Country { get; set; }
        public string Password { get; set; }
        public string Pic { get; set; }

        
        public UserClass(string FName, string LName, string Username, string Gender, string Email, string Birth, string Country, string Password, string Pic)
        {
            this.FName = FName;
            this.LName = LName;
            this.Username = Username;
            this.Gender = Gender;
            this.Email = Email;
            this.Birth = Birth;
            this.Country = Country;
            this.Password = Password;
            this.Pic = Pic;

        }

        public UserClass(DataTable dataTable)
        {
            this.FName = dataTable.Rows[0]["FName"].ToString();
            this.LName = dataTable.Rows[0]["LName"].ToString();
            this.Username = dataTable.Rows[0]["Username"].ToString();
            this.Gender = dataTable.Rows[0]["Gender"].ToString();
            this.Email = dataTable.Rows[0]["Email"].ToString();
            this.Birth = dataTable.Rows[0]["Birth"].ToString();
            this.Country = dataTable.Rows[0]["Country"].ToString();
            this.Password = dataTable.Rows[0]["Password"].ToString();
            this.Pic = dataTable.Rows[0]["Pic"].ToString();

        }

        public void InsertUser()
        {
            Dbase.ChangeTable(string.Format("INSERT INTO users VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')", FName, LName, Username, Gender, Email, Birth, Country, Password, Pic  ));
        }

       
        }
        //public string UpdateUser()
        //{
            //string Sql = string.Format("Update [users] set [FName]='{0}',[Lname]='{1}',[Country]={2},[Gender]='{3}',[Email]='{4}',[Birth]='{5}',[Password]='{6}' where ID='{7}'", FirstName, LastName, Country, Gender, Email, Birthday, Pass, ID);
            //Dbase.ChangeTable(Sql);
           // return "The user was Updated...";
       // }
    }
