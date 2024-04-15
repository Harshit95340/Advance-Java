<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
 <title>User Management Application</title>
</head>
<body>
 <center>
  <h1>User Management</h1>
        <h2>
         <a href="/Projec1/new">Add New User</a>
         &nbsp;&nbsp;&nbsp;
         <a href="list">List All Users</a>
         
        </h2>
 </center>
    <div align="center">
  <c:if test="${user != null}">
   <form action="update" method="post">
        </c:if>
        <c:if test="${user == null}">
   <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
             <h2>
              <c:if test="${user != null}">
               Edit User
              </c:if>
              <c:if test="${user == null}">
               Add New User
              </c:if>
             </h2>
            </caption>
          <c:if test="${user != null}">
           <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
          </c:if>            
            <tr>
                <th>User Name: </th>
                <td>
                 <input type="text" name="name" size="45"
                   value="<c:out value='${user.name}' />"
                  />
                </td>
            </tr>
            <tr>
                <th>User Email: </th>
                <td>
                 <input type="email" name="email" size="45"
                   value="<c:out value='${user.email}' />"
                 />
                </td>
            </tr>
            <tr>
                <th>Country: </th>
                <td>
                 <select name="country">
    <option value="Afghanistan" <c:if test="${user != null && user.country == 'Afghanistan'}">selected</c:if>>Afghanistan</option>
    <option value="Armenia" <c:if test="${user != null && user.country == 'Armenia'}">selected</c:if>>Armenia</option>
    <option value="Azerbaijan" <c:if test="${user != null && user.country == 'Azerbaijan'}">selected</c:if>>Azerbaijan</option>
    <option value="Bahrain" <c:if test="${user != null && user.country == 'Bahrain'}">selected</c:if>>Bahrain</option>
    <option value="Bangladesh" <c:if test="${user != null && user.country == 'Bangladesh'}">selected</c:if>>Bangladesh</option>
    <option value="Bhutan" <c:if test="${user != null && user.country == 'Bhutan'}">selected</c:if>>Bhutan</option>
    <option value="Brunei" <c:if test="${user != null && user.country == 'Brunei'}">selected</c:if>>Brunei</option>
    <option value="Cambodia" <c:if test="${user != null && user.country == 'Cambodia'}">selected</c:if>>Cambodia</option>
    <option value="China" <c:if test="${user != null && user.country == 'China'}">selected</c:if>>China</option>
    <option value="Cyprus" <c:if test="${user != null && user.country == 'Cyprus'}">selected</c:if>>Cyprus</option>
    <option value="Georgia" <c:if test="${user != null && user.country == 'Georgia'}">selected</c:if>>Georgia</option>
    <option value="India" <c:if test="${user != null && user.country == 'India'}">selected</c:if>>India</option>
    <option value="Indonesia" <c:if test="${user != null && user.country == 'Indonesia'}">selected</c:if>>Indonesia</option>
    <option value="Iran" <c:if test="${user != null && user.country == 'Iran'}">selected</c:if>>Iran</option>
    <option value="Iraq" <c:if test="${user != null && user.country == 'Iraq'}">selected</c:if>>Iraq</option>
    <option value="Israel" <c:if test="${user != null && user.country == 'Israel'}">selected</c:if>>Israel</option>
    <option value="Japan" <c:if test="${user != null && user.country == 'Japan'}">selected</c:if>>Japan</option>
    <option value="Jordan" <c:if test="${user != null && user.country == 'Jordan'}">selected</c:if>>Jordan</option>
    <option value="Kazakhstan" <c:if test="${user != null && user.country == 'Kazakhstan'}">selected</c:if>>Kazakhstan</option>
    <option value="Kuwait" <c:if test="${user != null && user.country == 'Kuwait'}">selected</c:if>>Kuwait</option>
    <option value="Kyrgyzstan" <c:if test="${user != null && user.country == 'Kyrgyzstan'}">selected</c:if>>Kyrgyzstan</option>
    <option value="Laos" <c:if test="${user != null && user.country == 'Laos'}">selected</c:if>>Laos</option>
    <option value="Lebanon" <c:if test="${user != null && user.country == 'Lebanon'}">selected</c:if>>Lebanon</option>
    <option value="Malaysia" <c:if test="${user != null && user.country == 'Malaysia'}">selected</c:if>>Malaysia</option>
    <option value="Maldives" <c:if test="${user != null && user.country == 'Maldives'}">selected</c:if>>Maldives</option>
    <option value="Mongolia" <c:if test="${user != null && user.country == 'Mongolia'}">selected</c:if>>Mongolia</option>
    <option value="Myanmar (Burma)" <c:if test="${user != null && user.country == 'Myanmar (Burma)'}">selected</c:if>>Myanmar (Burma)</option>
    <option value="Nepal" <c:if test="${user != null && user.country == 'Nepal'}">selected</c:if>>Nepal</option>
    <option value="North Korea" <c:if test="${user != null && user.country == 'North Korea'}">selected</c:if>>North Korea</option>
    <option value="Oman" <c:if test="${user != null && user.country == 'Oman'}">selected</c:if>>Oman</option>
    <option value="Pakistan" <c:if test="${user != null && user.country == 'Pakistan'}">selected</c:if>>Pakistan</option>
    <option value="Palestine" <c:if test="${user != null && user.country == 'Palestine'}">selected</c:if>>Palestine</option>
    <option value="Philippines" <c:if test="${user != null && user.country == 'Philippines'}">selected</c:if>>Philippines</option>
    <option value="Qatar" <c:if test="${user != null && user.country == 'Qatar'}">selected</c:if>>Qatar</option>
    <option value="Russia" <c:if test="${user != null && user.country == 'Russia'}">selected</c:if>>Russia</option>
    <option value="Saudi Arabia" <c:if test="${user != null && user.country == 'Saudi Arabia'}">selected</c:if>>Saudi Arabia</option>
    <option value="Singapore" <c:if test="${user != null && user.country == 'Singapore'}">selected</c:if>>Singapore</option>
    <option value="South Korea" <c:if test="${user != null && user.country == 'South Korea'}">selected</c:if>>South Korea</option>
    <option value="Sri Lanka" <c:if test="${user != null && user.country == 'Sri Lanka'}">selected</c:if>>Sri Lanka</option>
    <option value="Syria" <c:if test="${user != null && user.country == 'Syria'}">selected</c:if>>Syria</option>
    <option value="Taiwan" <c:if test="${user != null && user.country == 'Taiwan'}">selected</c:if>>Taiwan</option>
    <option value="Tajikistan" <c:if test="${user != null && user.country == 'Tajikistan'}">selected</c:if>>Tajikistan</option>
    <option value="Thailand" <c:if test="${user != null && user.country == 'Thailand'}">selected</c:if>>Thailand</option>
    <option value="Timor-Leste (East Timor)" <c:if test="${user != null && user.country == 'Timor-Leste (East Timor)'}">selected</c:if>>Timor-Leste (East Timor)</option>
    <option value="Turkey" <c:if test="${user != null && user.country == 'Turkey'}">selected</c:if>>Turkey</option>
    <option value="Turkmenistan" <c:if test="${user != null && user.country == 'Turkmenistan'}">selected</c:if>>Turkmenistan</option>
    <option value="United Arab Emirates (UAE)" <c:if test="${user != null && user.country == 'United Arab Emirates (UAE)'}">selected</c:if>>United Arab Emirates (UAE)</option>
    <option value="Uzbekistan" <c:if test="${user != null && user.country == 'Uzbekistan'}">selected</c:if>>Uzbekistan</option>
    <option value="Vietnam" <c:if test="${user != null && user.country == 'Vietnam'}">selected</c:if>>Vietnam</option>
    <option value="Yemen" <c:if test="${user != null && user.country == 'Yemen'}">selected</c:if>>Yemen</option>
</select>
            <!-- Add more countries as needed -->
        </select>
                </td>
            </tr>
            <tr>
             <td colspan="2" align="center">
              <input type="submit" value="Save" />
             </td>
            </tr>
        </table>
        </form>
    </div> 
</body>
</html>