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
  <link rel="stylesheet" href="css/responsiveness/payments.css">
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
    <p style="text-align: center;">DEPOSITAR DINHEIRO NA CONTA.<br><br>É RÁPIDO E SIMPLES.</p>
    <form action="invoice" method="POST" class="inputs">
    	<input type="hidden" id="cpf" name="cpf" value="<%= request.getParameter("cpf") %>" required>
	    <div class="cpf wrapped">
        	<label for="money">R$</label>
	    	<input type="text" id="money" name="money" required>
      	</div>
	    <input class="sign-up" type="submit" value="PAGAR FATURA">
	</form>
  </section>
</body>

</html>