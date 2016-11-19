<?php
	/**
	* 
	*/
	class Leitor
	{
		private $nome;
		private $data_nasc;
		private $email;
		private $senha;
		private $UF;

		function __construct($nome='', $data_nasc='', $email='', $senha='', $UF='')
		{
			$this->nome = $nome;
			$this->data_nasc = $data_nasc;
			$this->email = $email;
			$this->senha = $senha;
			$this->UF = $UF;
		}

		public function getNome(){
			return $this->nome;
		}
		public function setNome($nome){
			$this->nome = $nome;
		}

		public function getDataN(){
			return $this->$data_nasc;
		}
		public function setDataN($data_nasc){
			$this->data_nasc = $data_nasc;
		}



		public function getEmail(){
			return $this->email;
		}
		public function setEmail($email){
			$this->email = $email;
		}

		public function getSenha(){
			return $this->senha;
		}
		public function setSenha($senha){
			$this->senha = $senha;
		}

		public function getUF(){
			return $this->UF;
		}
		public function setUF($UF){
			$this->UF = $UF;
		}
	}
?>