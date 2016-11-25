-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25-Nov-2016 às 14:07
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_skoob`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_livro`
--

CREATE TABLE `tb_livro` (
  `cd_isbn-10_livro` bigint(20) NOT NULL,
  `cd_isbn-13_livro` bigint(20) NOT NULL,
  `nm_livro` varchar(50) NOT NULL,
  `ic_lancamento` tinyint(1) NOT NULL,
  `dt_lancamento` int(11) NOT NULL,
  `ds_resumo_livro` varchar(2000) NOT NULL,
  `nr_pagina_livro` int(5) NOT NULL,
  `ds_idioma_livro` varchar(20) NOT NULL,
  `ds_url_capa_livro` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_livro`
--

INSERT INTO `tb_livro` (`cd_isbn-10_livro`, `cd_isbn-13_livro`, `nm_livro`, `ic_lancamento`, `dt_lancamento`, `ds_resumo_livro`, `nr_pagina_livro`, `ds_idioma_livro`, `ds_url_capa_livro`) VALUES
(8551000535, 9788551000533, 'Contos peculiares', 1, 2016, 'O livro dentro dos livros, Contos peculiares é a coletânea de contos e fábulas citada ao longo da série O lar da srta. Peregrine para crianças peculiares — o livro com as histórias que os jovens peculiares escutam sua protetora contar e recontar.\r\nUm menino que vira gafanhoto e foge com um grupo de gansos; uma princesa com língua de cobra à procura de um príncipe com quem se casar; canibais ricos que comem braços e pernas de peculiares que têm o dom de se regenerar são alguns dos personagens dessas narrativas que há séculos povoam o imaginário dos peculiares, oferecendo não apenas valiosas lições, mas também pistas para informações secretas, como a localização exata de certas fendas temporais, por exemplo. Compilado por Millard Nullings, o menino invisível acolhido no lar da srta. Peregrine, o livro inclui surpreendentes comentários e notas, além de um desfecho alternativo para a tocante história do gigante Cuthbert, já conhecida dos leitores da série.\r\nInusitado, surpreendente e divertido, Contos peculiares é ao mesmo tempo um delicioso complemento e uma porta de entrada para o rico universo criado por Ransom Riggs; um verdadeiro presente para quem não resiste à magia das boas histórias.', 208, 'português ', 'https://cache.skoob.com.br/local/images//h41_dW0Y1pPbp_UEW5ZWmzb2Icg=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/606418/CONTOS_PECULIARES_1472490708606418SK1472490708B.jpg'),
(8580415217, 9788580415216, 'O Feiticeiro de Terramar (Ciclo Terramar #1)', 1, 2016, 'Há quem diga que o feiticeiro mais poderoso de todos os tempos é um homem chamado Gavião. Este livro narra as aventuras de Ged, o menino que um dia se tornará essa lenda.\r\nAinda pequeno, o pastor órfão de mãe descobriu seus poderes e foi para uma escola de magos. Porém, deslumbrado com tudo o que a magia podia lhe proporcionar, Ged foi logo dominado pelo orgulho e a impaciência e, sem querer, libertou um grande mal, um monstro assustador que o levou a uma cruzada mortal pelos mares solitários.\r\nPublicado originalmente em 1968, O feiticeiro de Terramar se tornou um clássico da literatura de fantasia. Ged é um predecessor em magia e rebeldia de Harry Potter. E Ursula K. Le Guin é uma referência para escritores do gênero como Patrick Rothfuss, Joe Abercrombie e Neil Gaiman.', 176, 'português', 'https://cache.skoob.com.br/local/images//6IR6lf5WewSCtM-BRIK-AqfphXw=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/571388/O_FEITICEIRO_DE_TERRAMAR_1470088093571388SK1470088093B.jpg'),
(8581637558, 9788581637556, 'Poke?mon Go: De treinador a mestre', 1, 2016, 'Os Pokémon invadiram o mundo que conhecemos! O sonho nutrido por fãs há 20 anos finalmente se tornou realidade. Agora é possível encontrar os monstrinhos de bolso em todos os lugares: na vizinhança, na escola, no trabalho e até no sofá de casa. Tudo isso graças ao aplicativo que causou uma nova febre mundial: Pokémon GO.\n\nEste guia o auxiliará com diversas dicas de desempenho e ferramentas utilizadas por jogadores experientes no mundo todo, desde a instalação inicial até a empolgante jor-nada com a realidade aumentada. Você descobrirá a melhor forma de escolher o seu primeiro Pokémon, como encontrar o 4º Pokémon misterioso, as diferentes maneiras para se usar uma pokébola na hora da captura, como dobrar a eficácia de itens de captura de Pokémon, estratégias avançadas para defender academias de sua equipe de ataques rivais, entre muitos outros desafios. Tudo com a segurança que um treinador Pokémon necessita. \n\nPortanto, a partir de agora, você não precisa mais quebrar a cabeça tentando entender as mecânicas do jogo. Instale o aplicativo, pegue suas Pokébolas e "Gotta catch ''em all"!', 144, 'português', 'https://cache.skoob.com.br/local/images//dwQZlVh-kge9hiISODVrYDp6L0g=/200x/center/top/smart/filters:format(jpeg)/https://skoob.s3.amazonaws.com/livros/607094/POKEEA769MON_GO_DE_TREINADOR_1471983274607094SK1471983274B.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_livro`
--
ALTER TABLE `tb_livro`
  ADD PRIMARY KEY (`cd_isbn-10_livro`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
