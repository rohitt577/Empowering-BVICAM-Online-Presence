import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "DeletionServlet", urlPatterns = {"/DeletionServlet"})
public class DeletionServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve serial number to be deleted
        String sno = request.getParameter("sno");

        Connection conn = null;
        PreparedStatement statement = null;
        Statement reorderStatement = null;
        String message = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            String url = "jdbc:mysql://localhost:3306/bvp";
            String username = "root";
            String password = "Rattle@123";
            conn = DriverManager.getConnection(url, username, password);

            // Prepare SQL statement to delete the record with the given sno
            String sql = "DELETE FROM student_council WHERE sno = ?";
            statement = conn.prepareStatement(sql);
            statement.setString(1, sno);
            int rowsDeleted = statement.executeUpdate();

            if (rowsDeleted > 0) {
                message = "Record with sno " + sno + " deleted successfully!";

                // Reorder the 'sno' column to make it contiguous
                reorderStatement = conn.createStatement();
                String reorderSql = "SET @row_number = 0; " +
                                    "UPDATE student_council " +
                                    "SET sno = (@row_number := @row_number + 1) " +
                                    "ORDER BY sno";
                reorderStatement.executeUpdate(reorderSql);

                message += " Serial numbers reordered.";
            } else {
                message = "Record with sno " + sno + " does not exist!";
            }
        } catch (ClassNotFoundException | SQLException ex) {
            message = "Error: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            // Close resources
            try {
                if (statement != null) {
                    statement.close();
                }
                if (reorderStatement != null) {
                    reorderStatement.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

            // Set message attribute and forward to a confirmation page
            request.setAttribute("message", message);
            request.getRequestDispatcher("confirmation.jsp").forward(request, response);
        }
    }
}