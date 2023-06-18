<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Admin</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
</head>
<body>
<%@ include file="/layout/header.jsp" %>
<div class="w-[80%] bg-gray-200 mx-auto">
    <div class="pt-5 w-[30%] mx-auto items-center">
        <h1 class="text-3xl border-b-8 border-black pb-3 font-bold text-center">Admin Dashboard</h1>
    </div>


<%-- students, teachers, courses, enrolled course numbers....--%>
    <div class="w-full flex justify-center items-center mt-20">
        <div class="w-[80%] flex flex-col gap-10">

            <div class="flex w-[50%] h-[10vh] mx-auto items-center p-8 bg-white border-2 shadow-sm rounded-lg">
                <div class="inline-flex flex-shrink-0 items-center justify-center h-10 w-10 text-black bg-gray-300 rounded-full mr-6">
                    <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
                    </svg>
                </div>
                <div>
                    <span class="block text-2xl font-bold">${allTeachers.size()}</span>
                    <span class="block text-gray-500">Total Teachers</span>
                </div>
            </div>

            <div class="flex w-[50%] h-[10vh] mx-auto items-center p-8 bg-white border-2 shadow-sm rounded-lg">
                <div class="inline-flex flex-shrink-0 items-center justify-center h-10 w-10 text-green-600 bg-green-100 rounded-full mr-6">
                    <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
                    </svg>
                </div>
                <div>
                    <span class="block text-2xl font-bold">${allStudents.size()}</span>
                    <span class="block text-gray-500">Total Students</span>
                </div>
            </div>
            <div class="flex w-[50%] h-[10vh] mx-auto items-center p-8 bg-white border-2 shadow-sm rounded-lg">
                <div class="inline-flex flex-shrink-0 items-center justify-center h-10 w-10 text-blue-600 bg-orange-100 rounded-full mr-6">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M9 17.25v1.007a3 3 0 01-.879 2.122L7.5 21h9l-.621-.621A3 3 0 0115 18.257V17.25m6-12V15a2.25 2.25 0 01-2.25 2.25H5.25A2.25 2.25 0 013 15V5.25m18 0A2.25 2.25 0 0018.75 3H5.25A2.25 2.25 0 003 5.25m18 0V12a2.25 2.25 0 01-2.25 2.25H5.25A2.25 2.25 0 013 12V5.25" />
                    </svg>
                </div>
                <div>
                    <span class="block text-2xl font-bold">${allCourses.size()}</span>
                    <span class="block text-gray-500">Total Courses</span>
                </div>
            </div>
        </div>
    </div>

<%--    student details table ...--%>
    <div class="w-full flex flex-col justify-center items-center mt-10 pb-8">
       <div class="w-[80%] flex justify-start items-center gap-2">
           <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
               <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
           </svg>
           <h1 class="text-2xl font-bold ">Students list</h1>
       </div>
        <div class="w-[80%] mt-3">
            <table class="w-full text-s text-left text-gray-500">
                <thead class="text-md text-gray-700 bg-gray-50">
                <tr>
                    <th scope="col" class="text-center px-6 py-3">
                       Name
                    </th>
                    <th scope="col" class="text-center px-6 py-3">
                        Username
                    </th>
                    <th scope="col" class="text-center px-6 py-3">
                        Email
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${allStudents}" var="student">
                    <tr class="bg-white border-b hover:bg-gray-50">
                        <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap ">
                           ${student.name}
                        </th>
                        <td class="px-6 py-4">
                            ${student.username}
                        </td>
                        <td class="px-6 py-4">
                            ${student.email}
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

<%--    teachers list--%>

        <div class="w-full flex flex-col justify-center items-center mt-10 pb-8">
            <div class="w-[80%] flex justify-start items-center gap-2">
                <svg aria-hidden="true" fill="none" viewBox="0 0 24 24" stroke="currentColor" class="h-6 w-6">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
                </svg>
                <h1 class="text-2xl font-bold ">Teachers list</h1>
            </div>
            <div class="w-[80%] mt-3">
                <table class="w-full text-s text-left text-gray-500">
                    <thead class="text-md text-gray-700 bg-gray-50">
                    <tr>
                        <th scope="col" class="text-center px-6 py-3">
                            Name
                        </th>
                        <th scope="col" class="text-center px-6 py-3">
                            Username
                        </th>
                        <th scope="col" class="text-center px-6 py-3">
                            Email
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${allTeachers}" var="teacher">
                        <tr class="bg-white border-b hover:bg-gray-50">
                            <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap ">
                                    ${teacher.name}
                            </th>
                            <td class="px-6 py-4">
                                    ${teacher.username}
                            </td>
                            <td class="px-6 py-4">
                                    ${teacher.email}
                            </td>
                        </tr>
                    </c:forEach>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
</div>
<%@ include file="../../layout/footer.jsp" %>
</body>
</html>