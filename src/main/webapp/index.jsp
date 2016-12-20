<%@page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>

<%
  String localAddress = InetAddress.getLocalHost().getHostAddress();
%>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Database Tests</title>
  
  <link rel="stylesheet" href="styles/dbtest.css"/>
  <script src="scripts/dbtest.js"></script>
</head>

<body>
<h1>DATABASE TEST PAGE</h1><p/>
<%
  long testStart = System.currentTimeMillis();

  // Get the visible system environment variables
  Map<String,String> envs = System.getenv();

  for( String envName : envs.keySet())
  {
%>
<b><%= envName %></b>: <%= envs.get(envName) %><br/>
  }
  
  long testEnd = System.currentTimeMillis();
%>

<b><i>Test took <%= testEnd - testStart %>ms to complete.</i></b>

</body>
</html>
