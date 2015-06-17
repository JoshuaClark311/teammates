<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="teammates.common.util.Const" %>
<%@ page import="teammates.common.datatransfer.FeedbackSessionDetailsBundle" %>
<%@ page import="teammates.ui.controller.FeedbackSessionStatsPageData" %>
<%
    FeedbackSessionStatsPageData data = (FeedbackSessionStatsPageData)request.getAttribute("data");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>TEAMMATES-Feedback Stats</title>
    <link rel="stylesheet" href="/stylesheets/teammatesCommon.css" type="text/css" media="screen">
</head>
<body>
    <div id="frameTop">
        <jsp:include page="<%= Const.ViewURIs.INSTRUCTOR_HEADER %>" />
    </div>
    
    <div class="container" id="frameBodyWrapper">
            <div id="topOfPage"></div>
            <h1 class="align-center"><%= data.sessionDetails.feedbackSession.feedbackSessionName %></h1>
            <br>
            <p class="align-center">Expected : <%= data.sessionDetails.stats.expectedTotal %></p>
            <br />
            
            <p class="align-center">Submitted : <%= data.sessionDetails.stats.submittedTotal %></p>
            <br />
    </div>
</body>
</html>