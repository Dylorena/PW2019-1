<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <!-- Meta tags Obrigat�rias -->
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="IMC.css">
    <title>Formulario</title>
  </head>
  <body class="p-3 mb-2 bg-secondary text-white"p-3 mb-2 bg-primary text-white">
    <div class="container">
	<h1 align="center"> Calculo do IMC</h1>
	<form >
	<div class="form-group">
    		<label for="inputNome">Nome</label>
    		<input type="text" class="form-control" id="inputNome" placeholder="">
  	</div>
 	<div class="form-group" id="inputPeso" >
    		<label for="inputPeso">Peso</label>
    		<input name="peso" type="text" class="form-control"  placeholder="Ex. 72,200">
	</div>
	<div class="form-group" id="inputAltura">
  	  	<label for="inputAltura" >Altura</label>
    	  <input name="altura" type="text" class="form-control" placeholder="Ex. 1,74">
  	</div class="form-group">
	<button type="button" class="btn btn-primary" id="btnCalcula">Calcular</button>
	</form>
    </div>
    <!-- JavaScript (Opcional) -->
    <!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  
    <%
    String strPeso = request.getParameter("peso");
    if(strPeso != null){
      strPeso.replaceAll(",",".");
      float peso = Float.parseFloat(strPeso);
    }

    String strAltura = request.getParameter("altura");
    if(strAltura != null){
      strAltura.replaceAll(",",".");
      float altura = Float.parseFloat(strAltura);
    }

    float imc = peso/(altura * altura);

    if(imc >= 16 && imc <= 16.9){
    %>
      <p> Muito abaixo do peso </p>
    <%
    } else if (imc >= 17 && imc <= 18.4){
    %>
      <p>>Abaixo do peso</p>
    <%
    }else if (imc >= 18.5 && imc <= 24.9){
    %> 
      <p>Peso normal </p>
    <%
    }else if (imc >= 25 && imc <= 29.9){
    %>    
      <p>Acima do peso</p>
    <%
    } else if (imc >= 30 && imc <= 34.9){
    %>
      <p>Obesidade grau I</p>
    <%
    } else if (imc >= 35 && imc <= 40){
    %>
      <p>Obesidade grau II</p>
    <%
    } else {
    %>    
      <p>Obesidade grau III</p>
    <%
    }
    }
    %>
  
  </body>
</html>

