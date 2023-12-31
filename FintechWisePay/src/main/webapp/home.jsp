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
  <link rel="stylesheet" href="css/home/main-content.css">
  <link rel="stylesheet" href="css/responsiveness/home.css">
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
      <img class="btn-icons avatar" src="assets/avatar-img.svg"
        alt="Uma pessoa representada do pescoço para cima, e em forma de desenho, dentro de um círculo">
      <img class="btn-icons" src="assets/notification.svg" alt="Um sino">
      <img class="btn-icons" src="assets/setting.svg" alt="Uma engrenagem">
    </div>
  </section>

  <hr class="white-div">

  <section class="home">
    <div class="top">
      <h1 class="text">Olá, <%= request.getAttribute("name") %>!<br>Seja Bem Vindo!</h1>
      <div class="money limit">
        <span class="title">Limite Disponível</span>
        <span class="price">R$<%= request.getAttribute("creditLimit") %></span>
        <span class="subtitle">De um total de R$5000</span>
      </div>
      <div class="balance">
        <span class="title">Saldo Total <img class="eye" src="assets/eye.svg" alt="Um olho aberto desenhado"></span>
        <span class="price">R$<%= request.getAttribute("balance") %></span>
      </div>
    </div>
    <div class="middle">
      <a href="pix.jsp?cpf=<%= request.getParameter("cpf") %>"><button class="btn">Pagar com Pix</button></a>
      <a href="card.jsp?cpf=<%= request.getParameter("cpf") %>"><button class="btn">Pagar com Cartão</button></a>
      <a href="deposit.jsp?cpf=<%= request.getParameter("cpf") %>"><button class="btn">Depositar</button></a>
    </div>
    <div class="bottom">
      <div class="money invoice">
        <span class="title">Fatura à Pagar</span>
        <span class="price">R$<%= request.getAttribute("invoice") %></span>
        <span class="subtitle">Sua fatura vencerá dia 7</span>
      </div>
      <div class="invoice btns">
        <a href="invoice.jsp?cpf=<%= request.getParameter("cpf") %>"><button class="btn small">Pagar agora</button></a>
        <button class="btn small">Renegociar fatura</button>
      </div>
    </div>
  </section>
</body>

</html>