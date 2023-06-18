<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP Servlet Example</title>
  <script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-6Olyh0jwUHzZ7VjZzH5F7l5n5ueeN7/zrryGtvkJ8fsVpLwN13fRtZmBt8gu4W4HyvGmAbB2y3Ym8mumWJRpg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
 <%@ include file="../../layout/header.jsp" %>
<div class='w-[80%] bg-zinc-200 p-5 mx-auto' style="" >
    <div class='flex flex-col justify-center items-center mt-5'>
        <h1 class='text-[2.5rem] border-sky-600 border-b-8 font-bold text-sky-600'>Assigned Courses</h1>
    </div>

    <div class="w-[80%] mx-auto grid grid-cols-3 gap-20 mt-4 p-5">

                  <c:forEach items="${allCourses}" var="course">
                  <a href="/webtech3/in/teacher/${course.userId}">

                       <div class="min-w-[300px] border-2 rounded-lg bg-sky-600 flex flex-col justify-center items-center shadow-md pb-5">
                             <h1 class="text-3xl text-white my-5 font-bold">${course.title}</h1>
                             <p class="text-l text-white mt-3">${course.summary}</p>
                       </div>

</a>
                  </c:forEach>
        </div>

</div>
<%@ include file="../../layout/footer.jsp" %>
</body>
</html>