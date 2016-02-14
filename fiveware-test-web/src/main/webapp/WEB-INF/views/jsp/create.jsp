<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Cria usuario</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="${jqueryJs}"></script>
<script>
 jQuery(document).ready(function($) {
 		$("#sucesso").hide()
 		$("#form").submit(function(event) {

 			// Prevent the form from submitting via the browser.
 			event.preventDefault();
 			save();

 		});
 	});

 	function save() {
 		var data = {}
 		data["login"] = $("#login").val();
 		data["senha"] = $("#senha").val();
 		data["sexo"] = $("#sexo").val();
 		data["candidato"] = $("#candidato").is(":checked")
        $.ajax({
        			type : 'POST',
        			contentType : "application/json",
        			url : "${home}createAjax/",
        			data : JSON.stringify(data),
                    dataType : 'json',
        			success : function(data) {
        			$("#sucesso").show()
        				console.log("SUCCESS: ", data);

        			},
        			error : function(e) {
        				console.log("ERROR: ", e);
        			},
        			done : function(e) {
        				console.log("DONE");
        			}
        		});


    }

 </script>
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
      <div class="col-lg-12 text-center v-center">

      <div id="sucesso" class="alert alert-success" role="alert">
        <a href="#" class="alert-link">Sucesso</a>
       </div>

         <h1>Aloha</h1>
          <p class="lead">Crie o usuario</p>
          <br>
           <form id="form" class="form-signin">
                  <h2 class="form-signin-heading">Preencha os campos:</h2><br>
                  <input id="login" type="text" class="center-block form-control " style="display:inline-block;width:200px" placeholder="Digite o usuário"><br><br>
                  <input id="senha" type="password" class="center-block form-control " style="display:inline-block;width:200px" placeholder="Digite a senha">

                  <label class="checkbox">
                  <input type="checkbox" id="candidato" value="candidato"> Candidato ?
                  </label>

                 <label for="sel1">Selecine o sexo:</label><br>
                 <select class="input-block-level form-control" id="sexo" style="display:inline-block;width:200px" >
                   <option value="M">Masculino</option>
                   <option value="F">Femino</option>
                 </select>
                <br><br>
                  <button class="btn btn-large btn-primary" type="submit">Salvar</button>
                  <div class="container">
                    <a href="/login">
                    <p class="text-primary">Clique aqui para o login.</p></a>
                  </div>
                </form>
      </div>
</div>

</body>
</html>