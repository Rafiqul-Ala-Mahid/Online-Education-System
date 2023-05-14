<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
</head>
<body>
<%@ include file="/layout/header.jsp" %>
<div class="w-[80%] mx-auto bg-[#E9E9E9] h-full flex justify-center items-center">
    <div class="w-[80%] bg-[#E9E9E9] flex justify-between flex-row items-center p-3 mb-10">
        <div class="w-full mx-5">
            <img src="https://cdni.iconscout.com/illustration/premium/thumb/user-account-sign-up-4489360-3723267.png" alt="login"
                 class="w-full h-[65vh]">
        </div>
        <div class="w-[60%] flex flex-col items-center">
            <div class="w-full flex justify-center">
                <h1 class="text-3xl mt-5 font-bold text-sky-600">Signup</h1>
            </div>
            <form method="POST" action="register" class="w-full flex flex-col items-start mt-5">
                <div class="w-full flex flex-col items-start">
                    <span class="text-xl ms-1 font-bold text-sky-600">Name</span>
                    <input type="text" placeholder="Name" name="name" class="outline-none w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                </div>
                <div class="w-full flex flex-col items-start mt-1">
                    <span class="text-xl ms-1 font-bold text-sky-600">Email</span>
                    <input type="text" placeholder="email" name="email" class="outline-none w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                </div>
                <div class="w-full flex flex-col items-start mt-1">
                    <span class="text-xl ms-1 font-bold text-sky-600">Username</span>
                    <input type="text" placeholder="username" name="username" class="outline-none w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                </div>
                <div class="w-full flex flex-col items-start mt-1">
                    <span class="text-xl ms-1 font-bold text-sky-600">Password</span>
                    <input type="password" placeholder="*******" name="password" class="outline-none w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                </div>
                <div class="w-full flex flex-col items-start mt-1">
                    <span class="text-xl ms-1 font-bold text-sky-600">Role</span>
                    <select name="role" class="w-full bg-white border-[1px] border-[#9BA4B5] p-2 px-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                        <option value="Student">Student</option>
                        <option value="Teacher">Teacher</option>
                    </select>
                </div>
                <div class="w-full flex justify-center">
                    <button type="submit" class="border-none w-[200px] py-2 px-4 bg-sky-600 text-xl text-white rounded-md mt-5">Signup</button>
                </div>
            </form>
        </div>
    </div>
</div>
<%@ include file="../../layout/footer.jsp" %>
</body>
</html>