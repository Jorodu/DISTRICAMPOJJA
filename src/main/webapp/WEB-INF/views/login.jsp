<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<!-- Custom-Files -->

    

	<!-- Font-Awesome-Icons-CSS -->
        <head>
            
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
            
        </head>    
        
        
    <body onload='document.loginForm.username.focus();'>  
           
    <center>
    <h1 style="color:#10707f;">Bienvenido</h1>

 
    <c:if test="${not empty errorMessge}"><div style="color:red; font-weight: bold; margin: 30px 0px;">${errorMessge}</div></c:if>
 
    <form name='login' action="DISTRICAMPOJJA-0.0.1-SNAPSHOT/" method='POST'>

        <table>
            <tr>
                <td style="color:gray;"> Usuario:</td>
                <td><input type='text' class="form-control" name='username' value='' placeholder="Enter user"></td>
            </tr>
            <tr>
  
                <td style="color:gray;"> Contraseña:</td>
                <td><input type='password' class="form-control" name='password' placeholder="Enter password" /></td>
            </tr>
            <tr>
                <td colsp   an='2'><input name="submit" type="submit" value="Enviar" class="btn btn-primary btn-block"> </td>
            </tr>
        </table>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>
</center>
    </body>

</html>