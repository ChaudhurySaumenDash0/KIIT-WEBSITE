<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
  <title>Submitted Person Details</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
      background-color: #68ffb9;
      background-image: url('kiitimage2.jpeg');
      background-repeat: no-repeat;
      background-size: cover;
    }
    h1 {
      text-align: center;
      margin: auto;
      width: 50%;
    }
    p {
      margin-bottom: 10px;
    }
    strong {
      font-weight: bold;
    }
     .log{
      display: block;
      float: left;
      width: 25%;
      height: 50%;
      padding:0%;


    }
    .details-container {
      width: 400px;
      margin: 0 auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 8px;
      background-color: #f9f9f9;
    }
    .details-label {
      display: block;
      font-weight: bold;
    }
    .details-value {
      margin-left: 10px;
    }
     input[type="button"]:hover {
      background-color: green;
    }
   
    input[type="button"] {
      background-color: #FFFF00 ;
      color: #fff;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
    }

   
    input[type="button"]:last-child {
      background-color: #008000;
      color: #000;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      cursor: pointer;
      margin-left: 10px;
    }

  </style>
</head>
<body>
<img src="logo.png" class=log>
<h1><center style="color: rgb(162, 13, 231);">Application for KIITEE 2023</center></h1>
  <marquee width="50%" direction=left height="100px">
     <b><i>Please Verify Your Details before Submission</i></b>
       </marquee>
  <div class="details-container">
  <h2><centre style="color: blue;">Personal Details</centre></h2>
    <p><span class="details-label">First Name:</span> <span class="details-value"><%= request.getParameter("first_name") %></span></p>
    <p><span class="details-label">Last Name:</span> <span class="details-value"><%= request.getParameter("last_name") %></span></p>
    <p><span class="details-label">Email:</span> <span class="details-value"><%= request.getParameter("email") %></span></p>
    <p><span class="details-label">Phone:</span> <span class="details-value"><%= request.getParameter("phone") %></span></p>
    <p><span class="details-label">Date of Birth:</span> <span class="details-value"><%= request.getParameter("birthdate") %></span></p>
    <p><span class="details-label">Gender:</span> <span class="details-value"><%= request.getParameter("gender") %></span></p>
     <p><span class="details-label">Father's Name:</span> <span class="details-value"><%= request.getParameter("fname") %></span></p>
      <p><span class="details-label">Mother's Name:</span> <span class="details-value"><%= request.getParameter("mname") %></span></p>
    <p><span class="details-label">Address:</span> <span class="details-value"><%= request.getParameter("address") %></span></p>
    <p><span class="details-label">City:</span> <span class="details-value"><%= request.getParameter("address1") %></span></p>
    <p><span class="details-label">Pin:</span> <span class="details-value"><%= request.getParameter("address2") %></span></p>
    <p><span class="details-label">State:</span> <span class="details-value"><%= request.getParameter("state") %></span></p>
    <p><span class="details-label">Aadhar:</span> <span class="details-value"><%= request.getParameter("aadhar") %></span></p>
    <p><span class="details-label">Reservation-category:</span> <span class="details-value"><%= request.getParameter("rcategory") %></span></p>
    <h2 ><centre style="color: blue;">Qualification Details</centre></h2>
    <p><span class="details-label">Qualification:</span> <span class="details-value"><%= request.getParameter("Qualification") %></span></p>
    <p><span class="details-label">Name of the Board:</span> <span class="details-value"><%= request.getParameter("Quali") %></span></p>
    <p><span class="details-label">Percentage/CGPA:</span> <span class="details-value"><%= request.getParameter("Qualificationn") %></span></p>
    <p><span class="details-label">Name of the Board(10th):</span> <span class="details-value"><%= request.getParameter("Qualiii") %></span></p>
    <p><span class="details-label">Percentage/CGPA(10th):</span> <span class="details-value"><%= request.getParameter("Qualificationnn") %></span></p>

    <input type="button" value="Prev" onclick="redirectToRegistrationForm()">
    <input type="button" value="Submit" onclick="redirectToThankYou()" >
   
<%
String firstname=request.getParameter("first_name");
String lastname=request.getParameter("last_name");
String email=request.getParameter("email");
 String phone=request.getParameter("phone");
String bday=request.getParameter("birthdate");
String gender=request.getParameter("gender");
String ftname=request.getParameter("fname");
String mtname=request.getParameter("mname");
String add=request.getParameter("address");
String city=request.getParameter("address1");
String pin=request.getParameter("address2");
String state=request.getParameter("state");
String aad=request.getParameter("aadhar");
String res=request.getParameter("rcategory");
String qual=request.getParameter("Qualification");
String ntw=request.getParameter("Quali");
String ptw=request.getParameter("Qualificationn");
String nte=request.getParameter("Qualiii");
String pte=request.getParameter("Qualificationnn");
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ois","root","ominfo");
   PreparedStatement ps = conn.prepareStatement("insert into reg(fname,lname,email,phone,dob,gender,fathersname,mothersname,address,city,pin,state,aadhar,reservation,qualification,nameoftwe,pertwe,nameoften,perten) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
    ps.setString(1,firstname);
    ps.setString(2,lastname);
    ps.setString(3,email);
    ps.setString(4,phone);
    ps.setString(5,bday);
    ps.setString(6,gender);
    ps.setString(7,ftname);
    ps.setString(8,mtname);
    ps.setString(9,add);
    ps.setString(10,city);
    ps.setString(11,pin);
    ps.setString(12,state);
    ps.setString(13,aad);
    ps.setString(14,res);
    ps.setString(15,qual);
    ps.setString(16,ntw);
    ps.setString(17,ptw);
    ps.setString(18,nte);
    ps.setString(19,pte);
    int x = ps.executeUpdate();
    if(x>0){
        out.print("Registartion done successfully");
        
    }
    else{
        out.print("Registartion failed");
    }

}
catch(Exception e){
    out.println(e);
}
%>
    
  </div>
  <script>
    function redirectToThankYou() {
      window.location.href = "thankyou.html"; 
     

    }

    function redirectToRegistrationForm() {
      window.location.href = "registrationform.html";
    }
  </script>
</body>
</html>
