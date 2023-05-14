
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div class="w-[80%] bg-zinc-200 mx-auto bg-white">
    <div class="w-full flex flex-col justify-center items-center">
       <h1>Create a new course</h1>
    </div>
    <div class="w-full flex justify-center items-center">
            <form method="POST" action="/webtech3/course" class="w-[60%] flex flex-col items-center mt-10">
                <div class="w-full flex flex-col items-start mt-4">
                    <span class="text-xl ms-1 font-bold text-sky-600">Course Title</span>
                    <input type="text" placeholder="Course Title" name="title" class="outline-none mt-2 w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                </div>
                <div class="w-full flex flex-col items-start mt-4">
                    <span class="text-xl ms-1 font-bold text-sky-600">Course Summary</span>
                    <textarea placeholder="Course Summary" name="summary" class="outline-none mt-2 w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]"></textarea>
                </div>
                <div class="w-full flex flex-col items-start mt-4">
                    <span class="text-xl ms-1 font-bold text-sky-600">Assign Teacher</span>
                    <select name="teacher" class="w-full mt-2 bg-white border-[1px] border-[#9BA4B5] p-2 px-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                        <c:forEach var="item" items="${teachers}">

                        <option value="${item.getName()}: ${item.getUserId()}">${item.getName()}</option>
                        </c:forEach>

                    </select>
                </div>
                <div class="w-full flex justify-center items-center">
                    <button type="submit" class="border-none w-[200px] py-4 px-6 bg-sky-600 text-xl text-white rounded-md mt-8">Create Course</button>
                </div>
            </form>
        </div><
</div>
 <%@ include file="../../layout/footer.jsp" %>
</body>
</html>