<%@ page import="java.time.LocalTime" %>
<html>
<head>
    <title>COMP367</title>
</head>
<body>
<%
    LocalTime now = LocalTime.now();
    int hour = now.getHour();
    String greeting;

    if (hour < 12) {
        greeting = "Good morning, Kevin, Welcome to COMP367";
    } else {
        greeting = "Good afternoon, Kevin, Welcome to COMP367";
    }
%>

<h1><%= greeting %></h1>

</body>
</html>