<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.Servlet.Models.User" %>

<div class="w-[80%] mx-auto pt-5 flex justify-center shadow-md">
   <div class="w-full flex justify-around mb-4">
       <div class="w-[40%] mx-5 items-center flex gap-5">
           <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjezjBEn0dIMypeDzJm2ykT1ICkbwDVu5m3g&usqp=CAU" class="w-[18%] rounded-full" alt="tag">
           <h1 style="" class="text-3xl font-serif font-bold">Online Education</h1>
       </div>
       <% User user=(User)session.getAttribute("login");
            String role = "";
                   if (user != null) {
                       role = String.valueOf(user.getRole());
                   }
        %>


       <ul class='w-[40%] text-lg text-sky-700 flex justify-end gap-5 items-center decoration-none'>
           <li><a href='/webtech3/'>Home</a></li>
           <li><a href='/webtech3/course'>Courses</a></li>



                      <% if(role.equals("TEACHER")){%>
                                <li ><a href='/webtech3/logout'>logout</a></li>
                               <li><a href="/webtech3/in/teacher" class="text-lg text-sky-700">
                                   <img class="w-10 h-10 p-1 rounded-full ring-2 ring-gray-300 dark:ring-gray-500" src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Bordered avatar">
                               </a></li>
                      <% } else if(role.equals("ADMIN")) { %>
                               <li><a href="/webtech3/in/admin/createCourse" class="text-lg text-sky-700">Create Course</a></li>
                               <li ><a href='/webtech3/logout'>logout</a></li>
                               <li><a href="/webtech3/in/admin" class="text-lg font-bold text-sky-700">
                                   <img class="w-10 h-10 p-1 rounded-full ring-2 ring-gray-300 dark:ring-gray-500" src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Bordered avatar">
                               </a></li>
                      <% } else if(role.equals("STUDENT")) { %>
                                <li ><a href='/webtech3/logout'>logout</a></li>
                               <li><a href="/webtech3/in/student" class="text-lg text-sky-700">
                                   <img class="w-10 h-10 p-1 rounded-full ring-2 ring-gray-300 dark:ring-gray-500" src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Bordered avatar">
                               </a></li>
                      <% } %>

                      <% if(user!=null){%>

                                  <% } else{ %>
                                  <li><a href='/webtech3/login'>login</a></li>
                                  <li><a href='/webtech3/register'>signup</a></li>
                      <%}%>
       </ul>
   </div>
</div>