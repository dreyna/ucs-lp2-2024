<%-- 
    Document   : index
    Created on : 15 jun 2024, 20:58:42
    Author     : Docente
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UCS</title>
        <link rel="shortcut icon" href="assets/images/ucs.png" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
        <style>
            .max-width{
                width: 100%;
                max-width: 350px;
                padding: 15px;
                margin: 0 auto;
            }
            .box{
                box-shadow:
                    inset 0 -3em 3em rgba(0, 0, 0, 0.1),
                    0 0 0 2px rgb(255, 255, 255),
                    0.3em 0.3em 1em rgba(0, 0, 0, 0.3);
            }
        </style>
    </head>
    <body class="d-flex justify-content-center align-items-center vh-100">
        <div class="border border-2 p-5 rounded-4 max-width box">
            <div class="d-flex flex-column align-items-center">
                <img src="assets/images/user2.png" width="128" alt="alt"/>
            </div>            
            <form action="login" method="post">
                <div class="form-group mb-3">
                    <label for="exampleInputUsuario" class="mb-1 fw-bold">Usuario:</label>
                    <input type="text" class="form-control" id="exampleInputUsuario" aria-describedby="emailHelp" placeholder="Usuario" name="username">                    
                </div>
                <div class="form-group mb-3">
                    <label for="exampleInputPassword1" class="mb-1 fw-bold">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="clave">
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    </body>
</html>
