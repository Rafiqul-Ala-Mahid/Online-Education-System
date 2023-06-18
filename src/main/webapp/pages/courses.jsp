
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.Servlet.Models.User" %>

<html>
<head>
    <title>Courses</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
</head>
<body>
<%@ include file="/layout/header.jsp" %>
<div class="w-[80%] mx-auto bg-white">
    <div class="w-full bg-zinc-200 flex flex-col justify-center items-center">
       <div class="flex flex-row w-[80%] justify-between items-center mt-5">
           <h1 class="text-[2.5rem] border-b-8 border-sky-600 ms-5 font-bold text-sky-600">Course Lists</h1>
       </div>

       <div class="w-[80%] grid grid-cols-3 gap-20 mt-4 p-5">

           <c:forEach items="${allCourses}" var="course">
                <div class="min-w-[300px] border-2 flex flex-col justify-center items-center shadow-md pb-5">
                     <div class="bg-sky-600 rounded-lg h-[200px] w-full"></div>
                           <div class="w-full h-[200px] flex flex-col justify-center items-center p-3">
                               <h1 class="text-lg font-bold">${course.title}</h1>
                               <p class="text-l text-gray-700 mt-3">${course.summary}</p>
                           </div>
                           <div class="w-full flex justify-center">
                            </div>
                             <div class="w-full flex justify-center">
                                <c:if test="${role == 'TEACHER'}">
                                     <a href="single-course?id=${course.userId}" class="border-none px-10 py-2 bg-sky-600 text-lg text-white rounded-md mt-4">Details</a>
                                </c:if>
                                <c:if test="${role == 'ADMIN'}">
                                      <a href="single-course?id=${course.userId}" class="border-none px-10 py-2 bg-sky-600 text-lg text-white rounded-md mt-4">Details</a>
                                </c:if>
                                <c:if test="${role == 'STUDENT'}">
                                      <a href="/webtech3/in/student/id/${course.userId}" class="border-none px-10 py-2 bg-sky-600 text-lg text-white rounded-md mt-4">Enroll</a>
                                </c:if>
                             </div>
                       </div>
                   </c:forEach>

               </div>
    </div>
</div>
 <%@ include file="../../layout/footer.jsp" %>
</body>
</html>