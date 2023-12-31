<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" href="assets/wisepaylogo.ico" type="image/ico">
  <title>WisePay</title>
  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/body.css">
  <link rel="stylesheet" href="css/header.css">
  <link rel="stylesheet" href="css/login/main-content.css">
  <link rel="stylesheet" href="css/responsiveness/login.css">
</head>

<body>
  <section class="header">
    <div class="left">
      <img class="logo" src="assets/logo.svg" alt="Uma mão, em desenho, segurando notas de dinheiro">
      <a href="#">
        Minha Conta
      </a>
      <a href="#">
        Meu Histórico
      </a>
      <a href="#">
        Investimentos
      </a>
      <a href="#">
        Suporte
      </a>
    </div>
    <div class="right">
      <img class="btn-icons avatar" src="assets/avatar.svg"
        alt="Uma pessoa representada do pescoço para cima, e em forma de desenho, dentro de um círculo">
      <img class="btn-icons" src="assets/notification.svg" alt="Um sino">
      <img class="btn-icons" src="assets/setting.svg" alt="Uma engrenagem">
    </div>
  </section>

  <hr class="white-div">

  <section class="main-content">
    <p style="text-align: center;">Olá! Seja muito bem vindo(a) novamente! Entre para<br> poder usufruir de nossas
      tecnologias.</p>
    <img class="hi" src="assets/hi.svg" alt="Uma mão balançando simbolizando um oi">
    <form action="login" method="POST" class="inputs">
	    <div class="cpf wrapped">
        	<label for="cpf">CPF</label>
	    	<input type="text" id="cpf" name="cpf" required>
      	</div>
		<div class="pswd wrapped">
        	<label for="password">Password</label>
	    	<input type="password" id="password" name="password" required>
      	</div>
	    <input class="sign-up" type="submit" value="Entrar">
	</form>
    <p>Ainda não possui uma conta? <a href="register.jsp"><span class="enter">Cadastre-se</span></a></p>
  </section>
</body>

</html>