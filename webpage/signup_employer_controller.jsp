<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vscode_ismgroup39.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>



<% 
String name = request.getParameter("name");
String org = request.getParameter("org_name");
String email = request.getParameter("email");
String password = request.getParameter("pass");
String confirm = request.getParameter("re_pass");
String bio = request.getParameter("bio");

// Get the value of the checkbox from the request parameter
String agreeTermValue = request.getParameter("agree-term");
// Check if the checkbox is checked
boolean isAgreeTermChecked = "on".equals(agreeTermValue);

if (name.length() >= 1 && password.length() >= 6 && confirm.equals(password) && org != null && email != null && bio != null && isAgreeTermChecked) {

    Connection con = null;
		
    //Define the SQL statement (to be executed)
    String sql= "INSERT INTO users (Name, Email, Password) " 
                        + " VALUES (?, ?, ?);";
    
    JdbcManager db = new JdbcManager();
            
    try {
        //open connection and get Connection object			
        con = db.getConnection();
        
        PreparedStatement stmt = con.prepareStatement( sql );
        
        //set values to all parameters
        stmt.setString(1, name);
        stmt.setString(2, email);
        stmt.setString(3, password);
        
        //execute the SQL statement (INSERT)	
        stmt.executeUpdate();
        
        //close everything to release resources	
        stmt.close();
        db.close();

        } catch (Exception e) {

            request.setAttribute("message", "Error");

        } finally {
        
        try {
            db.close();
        } catch (Exception e) {				
                
        }
        
    }

%>

     <jsp:forward page="login.jsp"/>

<%
 } else {

        request.setAttribute("message", "Please complete all fields");
    
    // if (password.length() >= 6 && !confirm.equals(password) && org != null && email != null && bio != null) {
    //     request.setAttribute("message", "Password doesn't match");
    // } else if (password.length() < 6 && org != null && email != null && bio != null) {
    //     request.setAttribute("message", "Password is weak");
    // } else if (org != null && email != null && bio != null && !isAgreeTermChecked) {
    //     request.setAttribute("message", "You must agree on Terms And Conditions");
    // } else {

    //     request.setAttribute("message", "Please complete all fields");
    // }
    
 
 %>

    <jsp:forward page="signup_employer.jsp"/>

<%
 }

%>