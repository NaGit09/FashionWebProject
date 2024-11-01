<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.List" %>
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
 <%@ include file="includes/navbar.jsp" %>

 <!-- Main Content Area -->
 <%
     // Assuming `singleProduct` is set in the request scope
     Product singleProduct = (Product) request.getAttribute("product");

     if (singleProduct == null) {
         out.println("<h2>Product not found</h2>");
         return; // Exit if product is not found
     }



 %>

 <section class="section-content padding-y bg">
     <div class="container">

         <!-- ============================ COMPONENT 1 ================================= -->
         <div class="card">
             <div class="row no-gutters">
                 <aside class="col-md-6">
                     <article class="gallery-wrap">
                         <div class="img-big-wrap">
                             <a href="#"><img src="<%= singleProduct.getPhoto() %>" alt="<%= singleProduct.getName() %>"></a>
                         </div> <!-- img-big-wrap.// -->
                     </article> <!-- gallery-wrap .end// -->
                 </aside>
                 <main class="col-md-6 border-left">
                     <article class="content-body">

                         <h2 class="title"><%= singleProduct.getName() %></h2>

                         <div class="mb-3">
                             <var class="price h4">$ <%= singleProduct.getPrice() %></var>
                         </div>

                         <p><%= singleProduct.getDescription() %></p>

                         <!-- item-option-select -->
                         <hr>


                     </article> <!-- product-info-aside .// -->
                 </main> <!-- col.// -->
             </div> <!-- row.// -->
         </div> <!-- card.// -->

         <br>



     </div> <!-- container .// -->
 </section>
 <!-- ========================= SECTION CONTENT END// ========================= -->
 <!-- Footer -->
 <%@ include file="includes/footer.jsp" %>
 </body>

