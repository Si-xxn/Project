<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="DTO.ShowDTO"%>
<%@page import="DAO.ShowDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ShowDAO dao = new ShowDAO(application);
	Map<String, Object> view = new HashMap<String, Object>();
	
	String title = request.getParameter("title");
	view.put(title, "title");
	
	ShowDTO dto = dao.selectView(title);
	
	String[]platform = dto.getPlatform().split("\r\n");
	
	
	
	dao.close();
%>           
<!DOCTYPE html>
<html lang="en">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Blog Post - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
 </head>
<body>
<jsp:include page="CommonSV/Header1.jsp" /><!--헤더1 로그인 관련  -->

<!-- Responsive navbar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
		<a class="navbar-brand" href="index.jsp">Home</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
	</div>
</nav>
<!-- Page content-->
<div class="container mt-5">
	<div class="row">
		<div class="col-lg-8">
			<!-- Post content-->
				<article>
				<!-- Post header-->
					<header class="mb-4">
					<!-- Post title-->
						<h1 class="fw-bolder mb-1"><%=dto.getTitle() %></h1>
						<!-- Post meta content-->
						<div class="text-muted fst-italic mb-2"><%=dto.getInfo_day() %></div>
						<!-- Post categories-->
						<%
							if(dto.getPlatform().contains("Netflix")){
						%>
							<span class="badge text-bg-danger rounded-pill">Netflix</span>
						
						<%} 
						if(dto.getPlatform().contains("Tving")) {%>
							<span class="badge text-bg-dark rounded-pill">Tving</span>
						<%}
						if(dto.getPlatform().contains("Disney+")) { %>	
							<span class="badge text-bg-primary rounded-pill">Disney+</span>
						<% } %>
                            
					</header>
					<!-- Preview image figure-->
					<figure class="mb-4"><img class="img-fluid rounded" src="resources/image/<%=dto.getInfo_jpg() %>.jpg" alt="상세정보 메인사진" /></figure>
					<!-- Post content-->
					<section class="mb-5">
						<h2 class="fw-bolder mb-4 mt-5">정보</h2>
						<h6 class="fs-5 mb-4">제작 : <%=dto.getDirector() %></h6>
                        <h6 class="fs-5 mb-4"><%=dto.getActor()%></h6>
                        <p class="fs-5 mb-4"><%=dto.getContents() %></p>
                        
					</section>
                    </article>
                    <!-- Comments section-->
                    <section class="mb-5">
                        <div class="card bg-light">
                            <div class="card-body">
                                <!-- Comment form-->
                                <form class="mb-4"><textarea class="form-control" rows="3" placeholder="Join the discussion and leave a comment!"></textarea></form>
                                <!-- Comment with nested comments-->
                                <div class="d-flex mb-4">
                                    <!-- Parent comment-->
                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                    <div class="ms-3">
                                        <div class="fw-bold">Commenter Name</div>
                                        If you're going to lead a space frontier, it has to be government; it'll never be private enterprise. Because the space frontier is dangerous, and it's expensive, and it has unquantified risks.
                                        <!-- Child comment 1-->
                                        <div class="d-flex mt-4">
                                            <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                            <div class="ms-3">
                                                <div class="fw-bold">Commenter Name</div>
                                                And under those conditions, you cannot establish a capital-market evaluation of that enterprise. You can't get investors.
                                            </div>
                                        </div>
                                        <!-- Child comment 2-->
                                        <div class="d-flex mt-4">
                                            <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                            <div class="ms-3">
                                                <div class="fw-bold">Commenter Name</div>
                                                When you put money directly to a problem, it makes a good headline.
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single comment-->
                                <div class="d-flex">
                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                    <div class="ms-3">
                                        <div class="fw-bold">Commenter Name</div>
                                        When I look at the universe and all the ways the universe wants to kill us, I find it hard to reconcile that with statements of beneficence.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>                
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
