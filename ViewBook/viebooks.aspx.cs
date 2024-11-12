using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace ViewBook
{
    public partial class viebooks : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FetchBorrowedBooks();// Call DataBind to clear the GridView
            }
        }



        private void FetchBorrowedBooks()
        {
            // Retrieve connection string from web.config
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["IRISPWCConnectionString2"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("Searchforborrow", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                // Add parameters if necessary, e.g., user-specific filtering
                // cmd.Parameters.AddWithValue("@UserID", userId);

                conn.Open();

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        List<BorrowedBook> borrowedBooks = new List<BorrowedBook>();
                        while (reader.Read())
                        {
                            BorrowedBook book = new BorrowedBook();
                            book.BookId = reader["Book_Id"].ToString();
                            book.Author1Id = reader["Author1_Id"].ToString();
                            book.Author2Id = reader["Author2_Id"].ToString();
                            book.BookName = reader["Book_Name"].ToString();

                            if (reader["Issue_date"] != DBNull.Value)
                            {
                                book.BookIssued = ((DateTime)reader["Issue_date"]).ToString("yyyy-MM-dd");
                            }
                            if (reader["Return_date"] != DBNull.Value)
                            {
                                book.BookReturned = ((DateTime)reader["Return_date"]).ToString("yyyy-MM-dd");
                            }

                            book.Auth_Name = reader["Auth_Name"].ToString();
                            // Consider fetching Author2Name similarly

                            borrowedBooks.Add(book);
                        }

                        // Bind the list of borrowed books to GridView
                        //gridviewbooks.DataSource = borrowedBooks;
                        gridviewbooks.DataBind();

                        // Make GridView visible
                        gridviewbooks.Visible = true;
                       
                    }
                    else
                    {
                        // Handle case where no rows are returned
                        // Example: lblMessage.Text = "No data found.";

                    }
                }
            }
        }

        protected void gridviewbooks_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }

    public class BorrowedBook
    {
        public string BookId { get; set; }
        public string Author1Id { get; set; }
        public string Author2Id { get; set; }
        public string Auth_Name { get; set; }
        public string BookName { get; set; }
        public string BookIssued { get; set; }
        public string BookReturned { get; set; }
    }
    public class Author
    {
        public int Auth_Id { get; set; }
        public string Auth_Name { get; set; }
        public string Auth_Genre { get; set; }
        public string Auth_Country { get; set; }
    }
}






/* private string GetAuthorNameById(string authorId, SqlConnection conn)
 {
     string query = "SELECT Auth_Name FROM LMS_Author WHERE Auth_Id = @Auth_Id";
     string authorName = string.Empty;

     using (SqlCommand cmd = new SqlCommand(query, conn))
     {
         cmd.Parameters.AddWithValue("@Auth_Id", authorId);

         // ExecuteScalar is appropriate here since we expect a single value
         object result = cmd.ExecuteScalar();

         if (result != null)
         {
             authorName = result.ToString();
         }
     }

     return authorName;
 }

*/








