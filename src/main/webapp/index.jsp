<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="cache-control" content="max-age=604800" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>GreatKart | One of the Biggest Online Shopping Platform</title>

      <!-- Favicon -->
       <link href="${pageContext.request.contextPath}/static/images/favicon.ico" rel="shortcut icon" type="image/x-icon">


    <!-- jQuery -->
       <script src="${pageContext.request.contextPath}/static/js/jquery-2.0.0.min.js" type="text/javascript"></script>

    <!-- Bootstrap4 files -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet" type="text/css"/>

   <!-- Font awesome 5 -->
       <link href="${pageContext.request.contextPath}/static/fonts/fontawesome/css/all.min.css" type="text/css" rel="stylesheet">

       <!-- Custom style -->
       <link href="${pageContext.request.contextPath}/static/css/ui.css" rel="stylesheet" type="text/css"/>
       <link href="${pageContext.request.contextPath}/static/css/responsive.css" rel="stylesheet" media="only screen and (max-width: 1200px)" />

       <!-- Custom javascript -->
       <script src="${pageContext.request.contextPath}/static/js/script.js" type="text/javascript"></script>
</head>
<body>
     <!-- Navbar -->
         <%@ include file="templates/includes/navbar.jsp" %>

         <!-- Main Content Area -->
         <div class="container">
             <jsp:include page="templates/home.jsp">
                 <jsp:param name="contentPage" value="/templates/home.jsp" />
             </jsp:include>
         </div>

         <!-- Footer -->
         <%@ include file="templates/includes/footer.jsp" %>
</body>
</html>
