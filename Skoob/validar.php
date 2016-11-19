<?php
session_start();

    require_once("classes/leitor.php");

    $leitor = new Leitor();
	mysql_connect("localhost","root","") or
    die("Não foi possível conectar:" . mysql_error());
	mysql_select_db("db_skoob");

$login=$_POST["usuario"];
$senha=$_POST["password"];

$query = mysql_query("SELECT * FROM tb_leitor WHERE ds_email_leitor = '$login' AND ds_senha_leitor = '$senha'");

$result = mysql_num_rows($query);
if($result == 1){
	echo "usuario encontrado";
	
	// Instanciando objeto leitor
	while ($result = mysql_fetch_assoc($query)) {
	
    $leitor->setNome($result['nm_leitor']);
    $leitor->setDataN($result['dt_nasc_leitor']);
    $leitor->setEmail($result['ds_email_leitor']);
    $leitor->setSenha($result['ds_senha_leitor']);
    $leitor->setUF($result['ds_distrito_leitor']);
    }
	// cookies e session
	setcookie ("usuario", $leitor->getEmail(), 3000);
	setcookie ("senha", $leitor->getSenha(), 3000);
	$_SESSION["UF"] = $leitor->getUF();
	$_SESSION["nome"] = $leitor->getNome();
echo '<script>window.location="Skoob_perfil.php";</script>';
}
else{
	echo "usuario não encontrado";
}


// ANTIGO
/*
$login=$_POST["usuario"];
$senha=$_POST["password"];


require_once('classes/leitor.php');
$leitor_diogo = new Leitor("Diogo Camilo", "diogo.camilo", "123", "São Vicente - SP");
$leitor_luiz = new Leitor("Luiz Alberto", "luiz.alberto", "123", "São Vicente - SP");
$leitor_beto = new Leitor("Beto Leonardo", "beto.leonardo", "123", "Praia Grande - SP");
$leitor_bruno = new Leitor("Bruno Nístico", "bruno.nistico", "123", "Praia Grande - SP");
$leitor_welton = new Leitor("Welton Miguel", "welton.miguel", "123", "Praia Grande - SP");



$welton = (($login == "welton.miguel") && ($senha == "123"));
$bruno = (($login == "bruno.nistico") && ($senha == "123"));
$beto = (($login == "beto.leonardo") && ($senha == "123"));
$luiz = (($login == "luiz.alberto") && ($senha == "123"));
$diogo = (($login == "diogo.camilo") && ($senha == "123"));


if ($beto){

	setcookie ("usuario", $leitor_beto->getLogin(), 3000);
	setcookie ("senha", $leitor_beto->getSenha(), 3000);
	$_SESSION["cidade"] = $leitor_beto->getCidade();
	$_SESSION["nome"] = $leitor_beto->getNome();
	echo '<script>window.location="Skoob_perfil.php";</script>';
}
else if ($bruno){

	setcookie ("usuario", $leitor_bruno->getLogin(), 3000);
	setcookie ("senha", $leitor_bruno->getSenha(), 3000);
	$_SESSION["cidade"] = $leitor_bruno->getCidade();
	$_SESSION["nome"] = $leitor_bruno->getNome();
	echo '<script>window.location="Skoob_perfil.php";</script>';
}

else if ($welton){

	setcookie ("usuario", $leitor_welton->getLogin(), 3000);
	setcookie ("senha", $leitor_welton->getSenha(), 3000);
	$_SESSION["cidade"] = $leitor_welton->getCidade();
	$_SESSION["nome"] = $leitor_welton->getNome();
	echo '<script>window.location="Skoob_perfil.php";</script>';
}

else if ($luiz){

	setcookie ("usuario", $leitor_luiz->getLogin(), 3000);
	setcookie ("senha", $leitor_luiz->getSenha(), 3000);
	$_SESSION["cidade"] = $leitor_luiz->getCidade();
	$_SESSION["nome"] = $leitor_luiz->getNome();
	echo '<script>window.location="Skoob_perfil.php";</script>';
}
else if ($diogo){

	setcookie ("usuario", $leitor_diogo->getLogin(), 3000);
	setcookie ("senha", $leitor_diogo->getSenha(), 3000);
	$_SESSION["cidade"] = $leitor_diogo->getCidade();
	$_SESSION["nome"] = $leitor_diogo->getNome();
	echo '<script>window.location="Skoob_perfil.php";</script>';
}

else {
	echo(
	'<script type="text/javascript"> alert("Usuario ou Senha invalido!");</script> \n
	<script>window.location="login.html";</script>');
}

*/
?>