<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Teste Processo Seletivo</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="${jqueryJs}"></script>


<style>
@import url(http://fonts.googleapis.com/css?family=Antic+Slab);

html,body {
  height:100%;
}

h1 {
  font-family: 'Antic Slab', serif;
  font-size:80px;
  color:#DDCCEE;
}

.lead {
	color:#DDCCEE;
}


/* Custom container */
.container-full {
  margin: 0 auto;
  width: 100%;
  min-height:100%;
  background-color:#110022;
  color:#eee;
  overflow:hidden;
}

.container-full a {
  color:#efefef;
  text-decoration:none;
}

.v-center {
  margin-top:7%;
}

</style>

</head>
<body>
<div class="container-full">
      <div class="row">
        <div class="col-lg-12 text-center v-center">
          <h1>Aloha</h1>
          <h2>Usuarios cadastrados</h2>
            <div class="input-group input-group-lg col-sm-offset-5 col-sm-5">
          <table   class="center-block table"" >
              <tr>
                  <th>Login</th>
                  <th>Senha</th>
                  <th>Sexo</th>
                  <th>Candidato</th>
              </tr>
              <c:forEach items="${usuarios}" var="usuario" >
                  <tr>
                      <td>${usuario.login}</td>
                      <td>${usuario.senha}</td>
                      <td>${usuario.sexo}</td>
                      <td>${usuario.candidato}</td>
                  </tr>
              </c:forEach>
          </table>
        </div>
        </div>

      </div>
</div>

</body>
</html>