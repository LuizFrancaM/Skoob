<?php
	
	$login = $_COOKIE['usuario'];
	$senha = $_COOKIE['senha'];
	printf($login.$senha);

if (!isset($login) || !isset($senha)) {
	echo "SEÇÃO INVÁLIDA, LOGUE NOVAMENTE!";
	header("location: login.html");	
}

?>