<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="css/login.css">
        <link href="css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
        <!-- partial:index.partial.html -->

        <div class="wrapper">
            <div class="inner-warpper text-center">
                <h2 class="title">Login </h2>
                <form method ="post" action="login" id="formvalidate">
                    <div class="input-group">
                        <input class="form-control" name="username" id="userName" type="text" placeholder="Username" />
                    </div>
                    <div class="input-group">
                        <input class="form-control" name="password" id="userPassword" type="password" placeholder="Password" />
                    </div>
                    
                    <h6 style="color:red">${requestScope.error}</h6>
                    <button type="submit" id="login">Login</button>
                    </form>
                    <div class="clearfix supporter">
                        <a class="forgot pull-right" href="#">Forgot Password?</a>
                    </div>
                
                
            </div>
            <div class="signup-wrapper text-center">
                <a href="register">Don't have an account? <span class="text-primary">Create One</span></a>
            </div>
        </div>

        <!-- you don't need that :)  -->

        <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.15.0/jquery.validate.min.js'></script><script  src="./script.js"></script>

    </body>

</html>