<!DOCTYPE html>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<head>
<title>Welcome Opex Tools Team!</title>
  <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" sizes="16x16 32x32" />
  <link rel="icon" type="image/x-icon" href="/favicon.ico"  sizes="16x16 32x32" />
<script  src="/js/jquery-2.2.2.min.js"   integrity="sha256-36cp2Co+/62rEAAYHLmRCPIych47CvdM+uTBJwSzWjI="   crossorigin="anonymous"></script>

<style type="text/css">
        body {
            margin-left: 10px;
            margin-right: 10px;
            font: normal 100% arial, helvetica, sanserif;
            background-color: #FFFFFF;
            color: #000000;
        }

        span.lastPeriod {
            color: black;
        }

        th, td {
            text-align: left;
            vertical-align: top;
        }

        th {
            font-weight: bold;
            background: lightgray;
            color: black;
        }

        h3 {
            font-size: 100%;
            font-weight: bold;
            margin-bottom: 4px;
        }

        table {
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid darkgray;
            padding: 6px;
			text-align: center;
			vertical-align:middle;
        }

        .trendGreen {
            color: green;
        }

        .trendGreen:after {
            content: " ↑";
        }

        .trendRed:after {
            content: " ↓";
        }

        .trendRed {
            color: darkred;
        }

        .trendNeutral:after {
            content: " ↔";
        }

        .trendNeutral {
            color: darkred;
        }
        a:link {
            color: blue;
            background-color: transparent;
            text-decoration: none;
        }
        a:visited {
            color: green;
            background-color: transparent;
            text-decoration: none;
        }
        a:hover {
            color: green;
            background-color: transparent;
            text-decoration: underline;
        }
        a:active {
            color: yellow;
            background-color: transparent;
            text-decoration: underline;
        }
</style>
</head>
	<h2 align="center">Service Now Ticket and Jira Ticket Information</h2>
    <p>&nbsp; </p>
</dr>

 <table align="center">
	 <tr>
     <td>Jira Number</td>
     <td>Title</td>
     <td>Incident Id</td>
     <td>Priority Id</td>
     <td>Incident Occurred Time</td>
     <td>Jira Created Time</td>
     <td>Service Now Created Time</td>
     <td>Jira Created By</td>
 </tr>
 <c:forEach items="${list}" var="p">
 <tr>
     <td>${p.jiraKey}</td>
     <td>${p.title}</td>
     <td>${p.incidentId}</td>
     <td>${p.priorityId}</td>
     <td>${p.incidentOccurredAt}</td>
     <td>${p.jiraCreatedAt}</td>
     <td>${p.incidentCreatedAt}</td>
     <td>${p.jiraCreatedBy}</td>
 </tr>
 </c:forEach>
</table>

	<p>&nbsp;</p>

</html>