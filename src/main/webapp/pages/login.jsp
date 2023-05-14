<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
</head>
<body>
<%@ include file="/layout/header.jsp" %>
<div class="w-[80%] mx-auto bg-[#E9E9E9] h-full flex justify-center items-center">
    <div class="w-[80%] h-[60vh] flex justify-center items-center p-3 mb-20">
        <div class="w-full">
            <img src="https://i.ibb.co/tBFgcRc/login.png" alt="login"
                 class="w-[100%] h-[60vh]">
        </div>
        <div class="w-[80%] border-2 mt-5 pt-5 flex flex-col items-center">
            <div class="w-full flex justify-center">
                <h1 class="text-3xl font-bold text-sky-600">Login</h1>
            </div>
            <form method="POST" action="login" class="w-full flex flex-col items-start mt-5">
                <div class="w-full flex flex-col items-start">
                    <span class="text-xl ms-1 font-bold text-sky-600">Username</span>
                    <input type="text" name="username" placeholder="username" class="outline-none mt-2 w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                </div>
                <div class="w-full flex flex-col items-start mt-4">
                    <span class="text-xl ms-1 font-bold text-sky-600">Password</span>
                    <input type="password" name="password" placeholder="*******" class="outline-none mt-2 w-full border-[1px] border-[#9BA4B5] p-2 rounded-md text-xl focus:border-[#142580] focus:border-[2px]">
                </div>
                <div class="w-full flex justify-center">
                    <button type="submit" class="border-none w-[200px] py-2 px-4 bg-sky-600 text-xl text-white rounded-md mt-5">Signin</button>
                </div>
            </form>
        </div>
    </div>
</div>
 <%@ include file="../../layout/footer.jsp" %>
</body>
</html>