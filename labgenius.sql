-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Dez-2018 às 03:41
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labgenius`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `nome`, `sobrenome`, `email`, `usuario`, `senha`) VALUES
(1, 'LetÃ­cia', 'Carvalho', 'lecarvalho@gmail.com', 'lecarv', 'lele123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `nome`, `sobrenome`, `email`, `usuario`, `senha`, `profile_pic`) VALUES
(13, 'Gustavo', 'Barca', 'gustavogb2@gmail.com', 'GuBarca', 'gustavo123', '37cccf3330828e07d5fa833f651e4c2b.png'),
(14, 'LetÃ­cia', 'Carvalho', 'leticia@email.com', 'lecarvalho', 'lele123', 'a81731bd76ba760a44b55ffdd36a4d8b.png'),
(15, 'teste', 'testando', 'testando@email.com', 'testando', 'teste', ''),
(16, 'larissa', 'carvalho', 'larissa@email.com', 'larissa', 'lari', 'b364283f2756b03a7c800973f899072e.png'),
(17, 'gabriela', 'silva', 'gabi@gmail.com', 'gabi', 'gabi', '877f40e5e14cd6d6260669238b2a695a.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_aula_rel`
--

CREATE TABLE `aluno_aula_rel` (
  `id_rel` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_aula` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno_aula_rel`
--

INSERT INTO `aluno_aula_rel` (`id_rel`, `id_aluno`, `id_aula`, `id_curso`) VALUES
(17, 14, 55, 33),
(19, 13, 55, 33),
(20, 13, 64, 34),
(21, 13, 63, 34),
(22, 13, 65, 34),
(23, 13, 72, 34),
(24, 16, 63, 34),
(25, 13, 73, 35),
(26, 13, 80, 35),
(27, 13, 85, 35),
(28, 13, 84, 35),
(29, 13, 105, 36),
(30, 13, 91, 36),
(31, 13, 197, 42);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_curso_rel`
--

CREATE TABLE `aluno_curso_rel` (
  `id_rel` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno_curso_rel`
--

INSERT INTO `aluno_curso_rel` (`id_rel`, `id_aluno`, `id_curso`) VALUES
(7, 1, 25),
(10, 1, 24),
(17, 14, 39),
(18, 14, 37),
(19, 14, 33),
(24, 13, 37),
(25, 13, 38),
(27, 13, 33),
(28, 13, 34),
(29, 16, 34),
(30, 13, 35),
(31, 13, 36),
(32, 13, 42);

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

CREATE TABLE `aulas` (
  `id_aula` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aulas`
--

INSERT INTO `aulas` (`id_aula`, `id_curso`, `id_modulo`, `titulo`, `descricao`, `type`, `date`) VALUES
(55, 33, 19, 'Curso de HTML e CSS para iniciantes - Aula 1', 'Nesta primeira aula vou passar o conceito bÃ¡sico de HTML e mostrar como criar sua primeira pÃ¡gina para teste. Com esta pÃ¡gina vocÃª vai aprender a criar a estrutura mais simples de um documento HTML, definir tÃ­tulos e tambÃ©m a codificaÃ§Ã£o (charset)', 1, '2018-11-07'),
(56, 33, 19, 'Curso de HTML e CSS para iniciantes - Aula 2', 'Na aula de hoje vamos escolher um editor para melhorar a produtividade e tambÃ©m conhecer mais algumas tags.', 1, '2018-11-07'),
(57, 33, 19, 'Curso de HTML e CSS para iniciantes - Aula 3', 'Na aula de hoje vou ensinar sobre listas em HTML.\r\n', 1, '2018-11-07'),
(58, 33, 19, 'Curso de HTML e CSS para iniciantes - Aula 4', 'No vÃ­deo de hoje vamos falar um pouco sobre boas prÃ¡ticas de desenvolvimento. Assunto bÃ¡sico mas que muitas vezes Ã© esquecido durante os cursos.', 1, '2018-11-07'),
(59, 33, 20, 'Curso de HTML e CSS para iniciantes - Aula 5', 'Hoje Ã© dia de aprender um pouco de SEO. Veja como usar corretamente as tags de cabeÃ§alho e tambÃ©m a meta tags para otimizar suas pÃ¡ginas corretamente.', 1, '2018-11-19'),
(61, 33, 20, 'Curso de HTML e CSS para iniciantes - Aula 6', 'Na aula de hoje vamos falar um pouco sobre HTML 5 e tambÃ©m criar uma estrutura bÃ¡sica de documento dentro desse padrÃ£o.', 1, '2018-11-07'),
(62, 33, 20, 'Curso de HTML e CSS para iniciantes - Aula 7', 'Na aula de hoje vou ensinar sobre blockquotes, links e imagens, alÃ©m de como navegar na estrutura de diretÃ³rios para inserir links e imagens em suas pÃ¡ginas.', 1, '2018-11-07'),
(63, 34, 21, 'IntroduÃ§Ã£o a Algoritmos - Curso de Algoritmos #01 - Gustavo Guanabara', 'Aula do Curso de Algoritmo criado pelo professor Gustavo Guanabara para o portal CursoemVideo.com.  Download de pacotes e curso com certificado GRÃTIS: http://cursoemvideo.com/course/curso-...\r\n', 1, '2018-11-19'),
(64, 34, 21, 'Primeiro Algoritmo - Curso de Algoritmos #02 - Gustavo Guanabara', 'Aula do Curso de Algoritmos criado pelo professor Gustavo Guanabara para o portal CursoemVideo.com. Download de pacotes e curso com certificado GRÃTIS: http://cursoemvideo.com/course/curso-...', 1, '2018-11-20'),
(65, 34, 21, 'Aula do Curso de Algoritmos criado pelo professor Gustavo Guanabara para o portal CursoemVideo.com.', 'Comando de Entrada e Operadores - Curso de Algoritmos #03 - Gustavo Guanabara', 1, '2018-11-20'),
(66, 34, 22, 'Operadores LÃ³gicos e Relacionais - Curso de Algoritmos #04 - Gustavo Guanabara', 'Aula do Curso de HTML5 criado pelo professor Gustavo Guanabara para o portal CursoemVideo.com.   Download de pacotes e curso com certificado GRÃTIS: ', 1, '2018-11-20'),
(67, 34, 22, 'IntroduÃ§Ã£o ao Scratch - Curso de Algoritmos #05 - Gustavo Guanabara', 'Aprenda como utilizar o Scratch, uma ferramenta que auxilia no aprendizado de Algoritmos e foi criado em um dos laboratÃ³rios do MIT, uma das referÃªncias no ramo de tecnologia.', 1, '2018-11-20'),
(68, 34, 22, 'ExercÃ­cios de Algoritmo Resolvidos - Curso de Algoritmos #06 - Gustavo Guanabara', 'Nessa aula, veremos uma sequÃªncia de exercÃ­cios resolvidos de algoritmos para praticar os conceitos vistos atÃ© aqui, com estruturas sequenciais.', 1, '2018-11-20'),
(69, 34, 23, 'Estruturas Condicionais 1 - Curso de Algoritmos #07 - Gustavo Guanabara', 'Veja como funcionam as estruturas condicionais, utilizando o comando SE..ENTAO..SENAO. Nessa primeira parte, veremos as estruturas condicionais simples e compostas.', 1, '2018-11-20'),
(70, 34, 23, 'Estruturas Condicionais 2 - Curso de Algoritmos #08 - Gustavo Guanabara', 'Estruturas Condicionais Se e Escolha Caso em Algoritmos. Veja como criar algoritmos com estruturas condicionais aninhadas e estruturas de mÃºltipla escolha. ', 1, '2018-11-20'),
(71, 34, 23, 'Estruturas de RepetiÃ§Ã£o 1 - Curso de Algoritmos #09 - Gustavo Guanabara', 'A estrutura de repetiÃ§Ã£o ENQUANTO vai permitir que vocÃª execute blocos de comandos vÃ¡rias vezes e simplificar a forma de representar lÃ³gicas que vÃ£o construir programas.', 1, '2018-11-20'),
(72, 34, 23, 'Estruturas de RepetiÃ§Ã£o 2 - Curso de Algoritmos #10 - Gustavo Guanabara', 'A estrutura Repita..Ate Ã© uma estrutura de repetiÃ§Ã£o com teste lÃ³gico no final, o que permite que vocÃª execute o bloco interno pelo menos uma vez, independente do resultado do teste. ', 1, '2018-11-20'),
(73, 35, 25, 'Curso MySQL #01 - O que Ã© um Banco de Dados?', 'Saiba como funciona um Banco de Dados e como eles surgiram no mundo da tecnologia. Aula do Curso de Banco de Dados com MySQL criado pelo professor Gustavo Guanabara para o portal CursoemVideo.com.', 1, '2018-12-04'),
(74, 35, 25, 'Curso MySQL #02a - Instalando o MySQL com WAMP', 'Veja como Instalar o WAMP Server no seu computador local e usar o MySQL resolvendo o possÃ­vel erro \"missing file MSVCR100.DLL\" instalando as bibliotecas da Microsoft.\r\n', 1, '2018-12-04'),
(75, 35, 25, 'Curso MySQL #02b - Instalando o XAMPP', 'Nessa aula, vamos aprender como instalar e configurar o ambiente PHP e MySQL utilizando o XAMPP.', 1, '2018-12-04'),
(76, 35, 25, 'Curso MySQL #03 - Criando o primeiro Banco de Dados', 'Nessa aula, vamos aprender a usar os comandos CREATE DATABASE e CREATE TABLE, bem como conhecer os vÃ¡rios tipos primitivos que o MySQL tem. ', 1, '2018-12-04'),
(77, 35, 26, 'Curso MySQL #04 - Melhorando a Estrutura do Banco de Dados', 'Veja como otimizar a estrutura da sua tabela usando comandos CREATE DATABASE e CREATE TABLE com suporte Ã  acentuaÃ§Ã£o de caracteres no MySQL. Nessa aula, vamos melhorar ainda mais os comandos que vimos na aula anterior.', 1, '2018-12-04'),
(78, 35, 26, 'Curso MySQL #05 - Inserindo Dados na Tabela (INSERT INTO)', 'ðŸ”´ IMPORTANTE ðŸ”´ Ajude a criar LEGENDAS para essa aula\r\nInstruÃ§Ãµes em: https://www.youtube.com/playlist?list...\r\nAjude em outras aulas: https://docs.google.com/spreadsheets/...', 1, '2018-12-04'),
(79, 35, 26, 'Curso MySQL #06 - Alterando a Estrutura da Tabela (ALTER TABLE e DROP TABLE)', 'ðŸ”´ IMPORTANTE ðŸ”´ Ajude a criar LEGENDAS para essa aula\r\nInstruÃ§Ãµes em: https://www.youtube.com/playlist?list...\r\nAjude em outras aulas: https://docs.google.com/spreadsheets/...', 1, '2018-12-04'),
(80, 35, 26, 'Curso MySQL #07 - Manipulando Linhas (UPDATE, DELETE e TRUNCATE)', 'Nessa aula, vamos aprender ...\r\n\r\nNÃ³s do CursoemVideo sempre recomendamos assistir a aula completa, mas se quiser aprender diretamente uma parte especÃ­fica, clique nos marcadores de tempo a seguir:\r\n\r\n0:19 - Qual Ã© o assunto da aula?\r\n', 1, '2018-12-04'),
(81, 35, 26, 'Curso MySQL #08 - Gerenciando CÃ³pias de SeguranÃ§a MySQL', 'Veja como exportar um banco de dados MySQL, gerando um DUMP de uma base de dados.\r\n\r\nVeja como importar um dump MySQL para o seu servidor.', 1, '2018-12-04'),
(82, 35, 26, 'Curso MySQL #09 - PHPMyAdmin (Parte 1)', 'Nessa aula, vamos aprender a usar uma das ferramentas online mais populares para gerenciar bancos de dados MySQL: o PHPMyAdmin.\r\n', 1, '2018-12-04'),
(83, 35, 26, 'Curso MySQL #10 - PHPMyAdmin (Parte 2)', 'Aprenda a utilizar o PHPMyAdmin para gerenciar seus bancos de dados.\r\n\r\nPHPMyAdmin Parte 1: https://youtu.be/OaPMvrA0cA4', 1, '2018-12-04'),
(84, 35, 26, 'Curso MySQL #11 - SELECT (Parte 1)', 'Link para DOWNLOAD do DUMP: http://tinyurl.com/download-mysql\r\n\r\nNessa aula, vamos aprender a usar o comando mais famoso da SQL: o SELECT.\r\n\r\nNÃ³s do CursoemVideo sempre recomendamos assistir a aula completa, mas se quiser aprender diretamente uma parte e', 1, '2018-12-04'),
(85, 35, 26, 'Curso MySQL #12 - SELECT (Parte 2)', 'Nessa aula, vamos aprender a utilizar o comando SELECT do MySQL.\r\n', 1, '2018-12-04'),
(86, 35, 26, 'Curso MySQL #13 - SELECT (Parte 3)', 'Nessa aula, vamos aprender a diferenÃ§a entre o uso do DISTINCT e do GROUP BY com HAVING.\r\n', 1, '2018-12-04'),
(87, 35, 26, 'Curso MySQL #14 - Modelo Relacional', 'VocÃª conhece o Modelo Relacional e sabe riar o Diagrama Entidade Relacionamento ou DER no Projeto de Banco de Dados?', 1, '2018-12-04'),
(88, 35, 26, 'Curso MySQL #15 - Chaves Estrangeiras e JOIN', 'VocÃª sabe a diferenÃ§a entre INNER JOIN e OUTER JOIN? Conhece os dois tipos de OUTER JOIN, o LEFT JOIN e o RIGHT JOIN? Pois agora vocÃª vai aprender.', 1, '2018-12-04'),
(89, 35, 26, 'Curso MySQL #16 - INNER JOIN com vÃ¡rias tabelas', 'Como fazer um JOIN com vÃ¡rias tabelas. Usando o INNER JOIN com trÃªs tabelas. Sintaxe do SELECT com JOIN.', 1, '2018-12-04'),
(90, 36, 27, 'Curso de Android - Aula 2 - InstalaÃ§Ã£o do Android', 'AULAS: http://www.youtube.com/playlist?list=...', 1, '2018-12-04'),
(91, 36, 27, 'Curso de Android - Aula 3 - Primeiro Projeto - eXcript', 'AULAS: http://www.youtube.com/playlist?list=...\r\n', 1, '2018-12-04'),
(92, 36, 27, 'Curso de Android - Aula 4 - Emulador - eXcript', 'Agora, vamos aprender a instalar o Emulador do Android, ou seja, a forma como podemos visualizar como nossos programas estÃ£o ficando ainda em tempo de desenvolvimento.', 1, '2018-12-04'),
(93, 36, 27, 'Curso de Android - Aula 5 - Estrutura de Pastas - eXcript', 'AULAS: http://www.youtube.com/playlist?list=...\r\n', 1, '2018-12-04'),
(94, 36, 28, 'Curso de Android - Aula 6 - Activity, View, LogCat - eXcript', 'AULAS: http://www.youtube.com/playlist?list=...\r\n', 1, '2018-12-04'),
(95, 36, 28, 'Curso de Android - Aula 7 - ContinuaÃ§Ã£o - eXcript', 'AULAS: http://www.youtube.com/playlist?list=...\r\n', 1, '2018-12-04'),
(96, 36, 28, 'Curso de Android - Aula 8 - XML - eXcript', 'AULAS: http://www.youtube.com/playlist?list=...\r\n', 1, '2018-12-04'),
(97, 36, 28, 'Curso de Android - Aula 9 - Gerenciadores de Layout I - eXcript', 'AULAS: http://www.youtube.com/playlist?list=...\r\n', 1, '2018-12-04'),
(98, 36, 28, 'Curso de Android - Aula 10 - Gerenciadores de Layout II - eXcript', 'AULAS: http://www.youtube.com/playlist?list=...\r\n', 1, '2018-12-04'),
(99, 36, 28, 'Curso de Android - Aula 11 - Gerenciadores de Layout III - eXcript', 'AULAS: http://www.youtube.com/playlist?list=...\r\n', 1, '2018-12-04'),
(100, 36, 28, 'Curso de Android - Aula 12 - LinearLayout II - eXcript', 'AULAS: http://www.youtube.com/playlist?list=...\r\n', 1, '2018-12-04'),
(101, 36, 28, 'Curso de Android - Aula 13 - Gerenciadores de Layout - eXcript', 'AULAS: http://www.youtube.com/playlist?list=...\r\n', 1, '2018-12-04'),
(102, 36, 28, 'Curso de Android - Aula 14 - LinearLayout IV - eXcript', 'AULAS: http://www.youtube.com/playlist?list=...\r\n', 1, '2018-12-04'),
(103, 36, 29, 'Curso de Android - Jogo da Velha - Aula 1 - Abertura - eXcript', 'Esse Ã© o primeiro episÃ³dio da nossa sÃ©rio sobre como desenvolver um simples Jogo da Velha para o Android. Essas vÃ­deo aulas tem por objetivo, mostrar de maneira prÃ¡tica, os passos necessÃ¡rios para o desenvolvimento de um Jogo da Velha. Para isso, fa', 1, '2018-12-04'),
(104, 36, 29, 'Curso de Android - Jogo da Velha - Aula 2 - Adicionando os objetos visual atravÃ©s do XML - eXcript', 'Nessa aula criaremos o projeto do jogo e tambÃ©m, comeÃ§aremos a adicionar os componentes visuais para a construÃ§Ã£o do Jogo da Velha. ApÃ³s nÃ³s adicionarmos ao XML os componentes visuais e tambÃ©m, os componentes que definem o alinhamento dos outros co', 1, '2018-12-04'),
(105, 36, 29, 'Curso de Android - Jogo da Velha - Aula 3 - Recuperando a instÃ¢ncia com a funÃ§Ã£o findViewWithTag()', 'Agora, nÃ³s recuperamos a instÃ¢ncia dos 9 componentes adicionados ao XML de forma que possamos facilmente manipular cada objeto facilmente dentro do cÃ³digo Java. Assim, atravÃ©s da funÃ§Ã£o findViewWithTag() nÃ³s localizamos cada botÃ£o, atÃ© porque, o ', 1, '2018-12-04'),
(106, 36, 29, 'Curso de Android - Jogo da Velha - Aula 4 - Adicionando o controle para iniciar a partida - eXcript', 'Nas aulas passadas definimos o XML e tambÃ©m, programamos o eventos onClick() dos botÃµes que foram adicionados atravÃ©s do XML. Agora, atravÃ©s do mÃ©todo que nÃ³s definimos, getLastPlay() nÃ³s iremos retornar qual foi a Ãºltima jogada e assim, conseguir', 1, '2018-12-04'),
(107, 36, 29, 'Curso de Android - Jogo da Velha - Aula 5 - Definindo os botÃµes em que jÃ¡ foram jogados - eXcript', 'Para o bom funcionamento de um jogo da velha, Ã© importante que a gente impeÃ§a de um usuÃ¡rio jogar em um campo que jÃ¡ havia sido jogado anteriormente. Para isso, nÃ³s temos que verificar se o texto do botÃ£o Ã© igual a vazio ( \"\" ). Isso porque, se o t', 1, '2018-12-04'),
(108, 36, 29, 'Curso de Android - Jogo da Velha - Aula 6 - Definindo um Array que irÃ¡ conter as jogadas - eXcript', 'Agora, vamos definir um Array que irÃ¡ conter todas as jogadas feitas pelos nossos jogadores. Isso porque, nÃ³s temos que ter uma maneira fÃ¡cil de verificar se um jogo jÃ¡ acabou, logo, a melhor maneira em que podemos fazer isso, Ã© atravÃ©s de um Array ', 1, '2018-12-04'),
(109, 37, 30, 'Curso Python #01 - Seja um Programador', 'VocÃª estÃ¡ pensando em ser um Programador e nÃ£o sabe por onde comeÃ§ar? Pois nessa aula vamos te dar todas as informaÃ§Ãµes e mostrar o caminho a seguir.', 1, '2018-12-04'),
(110, 37, 30, 'Curso Python #02 - Para que serve o Python?', 'De onde vem o Python? Por que esse nome? Quais sÃ£o as grandes empresas mundiais que usam Python em seus softwares? Essas e muitas outras perguntas serÃ£o respondidas nessa aula. ', 1, '2018-12-04'),
(111, 37, 30, 'Curso Python #03 - Instalando o Python3 e o IDLE', 'Entenda como funciona um Interpretador e veja como o Python funciona. Depois aprenda como instalar o Python 3.0 e o IDLE em seu computador com Windows, Linux ou Mac OS.', 1, '2018-12-04'),
(112, 37, 30, 'Curso Python #04 - Primeiros comandos em Python3', 'Agora chegou a hora de aprender os comandos bÃ¡sicos do Python e fazer os primeiros programas em Linguagem Python.', 1, '2018-12-04'),
(113, 37, 30, 'Curso Python #05 - Instalando o PyCharm e o QPython3', 'Nesta aula, veremos como instalar e configurar a IDE (Integrated Development Environment) Python chamada PyCharm no Windows, MacOS e Linux. AlÃ©m disso, veremos como programar Python no Android, utilizando o QPython3. ', 1, '2018-12-04'),
(114, 37, 31, 'ExercÃ­cio Python #001 - Deixando tudo pronto', 'Nesse vÃ­deo, mostraremos como criar um projeto Python no PyCharm e deixar tudo preparado para receber os exercÃ­cios da sÃ©rie, que vÃ£o utilizar o mesmo projeto.', 1, '2018-12-04'),
(115, 37, 31, 'ExercÃ­cio Python #002 - Respondendo ao UsuÃ¡rio', 'ExercÃ­cio Python 002: FaÃ§a um programa que leia o nome de uma pessoa e mostre uma mensagem de boas-vindas.', 1, '2018-12-04'),
(116, 37, 31, 'ExercÃ­cio Python #003 - Somando dois nÃºmeros', 'ExercÃ­cio Python 003: Crie um programa que leia dois nÃºmeros e mostre a soma entre eles.\r\n', 1, '2018-12-04'),
(117, 37, 31, 'ExercÃ­cio Python #004 - Dissecando uma VariÃ¡vel', 'ExercÃ­cio Python 004: FaÃ§a um programa que leia algo pelo teclado e mostre na tela o seu tipo primitivo e todas as informaÃ§Ãµes possÃ­veis sobre ele.\r\n', 1, '2018-12-04'),
(118, 37, 31, 'ExercÃ­cio Python #005 - Antecessor e Sucessor', 'ExercÃ­cio Python 005: FaÃ§a um programa que leia um nÃºmero Inteiro e mostre na tela o seu sucessor e seu antecessor.', 1, '2018-12-04'),
(119, 37, 31, 'ExercÃ­cio Python #006 - Dobro, Triplo, Raiz Quadrada', 'ExercÃ­cio Python 006: Crie um algoritmo que leia um nÃºmero e mostre o seu dobro, triplo e raiz quadrada.', 1, '2018-12-04'),
(120, 37, 31, 'ExercÃ­cio Python #007 - MÃ©dia AritmÃ©tica', 'ExercÃ­cio Python 007: Desenvolva um programa que leia as duas notas de um aluno, calcule e mostre a sua mÃ©dia.', 1, '2018-12-04'),
(121, 37, 31, 'ExercÃ­cio Python #008 - Conversor de Medidas', 'ExercÃ­cio Python 008: Escreva um programa que leia um valor em metros e o exiba convertido em centÃ­metros e milÃ­metros.', 1, '2018-12-04'),
(122, 37, 31, 'ExercÃ­cio Python #009 - Tabuada', 'ExercÃ­cio Python 009: FaÃ§a um programa que leia um nÃºmero Inteiro qualquer e mostre na tela a sua tabuada.', 1, '2018-12-04'),
(123, 37, 31, 'ExercÃ­cio Python #010 - Conversor de Moedas', 'ExercÃ­cio Python 010: Crie um programa que leia quanto dinheiro uma pessoa tem na carteira e mostre quantos dÃ³lares ela pode comprar.', 1, '2018-12-04'),
(124, 37, 31, 'ExercÃ­cio Python #011 - Pintando Parede', 'ExercÃ­cio Python 011: FaÃ§a um programa que leia a largura e a altura de uma parede em metros, calcule a sua Ã¡rea e a quantidade de tinta necessÃ¡ria para pintÃ¡-la, sabendo que cada litro de tinta pinta uma Ã¡rea de 2 metros quadrados.', 1, '2018-12-04'),
(125, 37, 31, 'ExercÃ­cio Python #012 - Calculando Descontos', 'ExercÃ­cio Python 012: FaÃ§a um algoritmo que leia o preÃ§o de um produto e mostre seu novo preÃ§o, com 5% de desconto.', 1, '2018-12-04'),
(126, 37, 31, 'ExercÃ­cio Python #013 - Reajuste Salarial', 'ExercÃ­cio Python 013: FaÃ§a um algoritmo que leia o salÃ¡rio de um funcionÃ¡rio e mostre seu novo salÃ¡rio, com 15% de aumento.', 1, '2018-12-04'),
(127, 37, 31, 'ExercÃ­cio Python #014 - Conversor de Temperaturas', 'ExercÃ­cio Python 014: Escreva um programa que converta uma temperatura digitando em graus Celsius e converta para graus Fahrenheit.', 1, '2018-12-04'),
(128, 38, 32, 'Javascript Essencial - Conceitos iniciais', 'Nesse curso eu vou ensinar  a base e os fundamentos do Javascript, uma linguagem de programaÃ§Ã£o client-side, ou seja, que Ã© executada no navegador do cliente, amplamente utilizada no desenvolvimento/complementaÃ§Ã£o de aplicaÃ§Ãµes web e sites.', 1, '2018-12-04'),
(129, 38, 32, 'Javascript Essencial - VariÃ¡veis e tipos de dados', 'Nessa aula vou falar sobre a sintaxe bÃ¡sica da linguagem e tambÃ©m sobre variÃ¡veis e tipos de dados.', 1, '2018-12-04'),
(130, 38, 32, 'Javascript Essencial - FunÃ§Ãµes', 'Nessa aula vocÃª vai aprender o que sÃ£o e pra que servem as funÃ§Ãµes, alÃ©m de ver exemplos de uso e aprender ainda sobre o escopo de variÃ¡veis: locais ou globais.\r\n', 1, '2018-12-04'),
(131, 38, 32, 'JavaScript Essencial - Objetos e Arrays', 'Nessa aula eu vou falar sobre Objetos e Arrays, dois tipos de variÃ¡veis que podem armazenar mÃºltiplas informaÃ§Ãµes facilitando nossa vida em muitas situaÃ§Ãµes. AlÃ©m de aprender os detalhes sobre cada tipo, vocÃª vai entender tambÃ©m as diferenÃ§as e ', 1, '2018-12-04'),
(132, 38, 32, 'JavaScript Essencial - Strings e nÃºmeros', 'Na aula de hoje vamos falar sobre variÃ¡veis do tipo STRING e tambÃ©m NUMÃ‰RICAS, e aprender algumas funÃ§Ãµes bÃ¡sicas para manipular ou executar aÃ§Ãµes com esses tipos de variÃ¡veis.', 1, '2018-12-04'),
(133, 38, 32, 'Javascript Essencial - Data e hora', 'Hora de aprender o bÃ¡sico sobre manipulaÃ§Ã£o de datas com JavaScript.\r\n', 1, '2018-12-04'),
(134, 38, 32, 'Javascript Essencial - Estruturas de controle e repetiÃ§Ã£o', 'Controlar a execuÃ§Ã£o de um programa conforme algum parÃ¢metro ou entÃ£o repetir um determinado processo um nÃºmero conhecido ou atÃ© desconhecido de vezes Ã© fundamental em programaÃ§Ã£o. Ã‰ justamente isso que vocÃª irÃ¡ aprender na aula de hoje.', 1, '2018-12-04'),
(135, 38, 32, 'Javascript Essencial - Tratamento de exceÃ§Ãµes', 'Aprenda nesse vÃ­deo como usar Try...Catch para tratar exceÃ§Ãµes em Javascript.\r\n', 1, '2018-12-04'),
(136, 38, 32, 'Javascript Essencial - DOM parte 1', 'Nessa aula vou falar sobre o DOM e sobre eventos em JS\r\n', 1, '2018-12-04'),
(137, 38, 32, 'Javascript Essencial - DOM parte 2 - BOM', 'Para encerrar nosso curso de JS vamos falar novamente sobre o DOM mas vamos conhecer o BOM e trabalhar com o objeto WINDOW.', 1, '2018-12-04'),
(138, 39, 33, 'HistÃ³ria do PHP - Curso PHP Iniciante #01 - Gustavo Guanabara', 'A Linguagem PHP comeÃ§ou em 1994, quando Rasmus Lerdorf resolveu criar um gerenciador de visitas para o seu site. Sua primeira criaÃ§Ã£o nÃ£o era uma linguagem, e sim uma ferramenta. Batizada de Personal Home Page, usava comandos simples inspirados da lin', 1, '2018-12-04'),
(139, 39, 33, 'Como funciona o PHP - Curso PHP Iniciante #02 - Gustavo Guanabara', 'Como funciona o PHP? Como transformar meu computador em um servidor? Como funciona tecnologias server-side? Qual Ã© a diferenÃ§a entre tecnologias PHP, ASP, JSP e etc? A segunda aula do seu Curso de PHP do Curso em VÃ­deo vai responder a essas e muitas ou', 1, '2018-12-04'),
(140, 39, 33, 'Como Instalar o PHP - Curso de PHP Iniciante #03 - Gustavo Guanabara', 'Nessa aula do Curso GrÃ¡tis de PHP para Iniciantes vocÃª vai aprender como instalar um servidor PHP no seu computador e vai ver como criar o seu primeiro exemplo de cÃ³digo PHP: o \"OlÃ¡, Mundo!\".', 1, '2018-12-04'),
(141, 39, 33, 'VariÃ¡veis em PHP - Curso PHP Iniciante #04 - Gustavo Guanabara', 'Antes de mais nada, Ã© importante que vocÃª entenda os conceitos de variÃ¡veis em Algoritmos e saiba utilizÃ¡-las corretamente. NÃ³s temos uma aula no Curso GrÃ¡tis de Algoritmos que fala sobre variÃ¡veis, assista esse vÃ­deo antes de prosseguir com essa ', 1, '2018-12-04'),
(142, 39, 33, 'Operadores AritmÃ©ticos - Curso PHP Iniciante #05 - Gustavo Guanabara', 'Como fazer contas no PHP? Como realizar somas, multiplicaÃ§Ãµes e mais? ExponenciaÃ§Ãµes em PHP? Raiz quadrada em PHP?', 1, '2018-12-04'),
(143, 39, 34, 'Operadores de AtribuiÃ§Ã£o - Curso PHP Iniciante #06 - Gustavo Guanabara', 'Uma atribuiÃ§Ã£o acontece quando queremos colocar algum valor dentro de uma variÃ¡vel, seja ele um nÃºmero ou string estÃ¡tica, o resultado de uma expressÃ£o, o retorno de uma funÃ§Ã£o ou o conteÃºdo de outra variÃ¡vel.\r\n\r\n== Operadores de AtribuiÃ§Ã£o do', 1, '2018-12-04'),
(144, 39, 34, 'Operadores Relacionais - Curso PHP Iniciante #07 - Gustavo Guanabara', 'Aula do Curso de PHP criado pelo professor Gustavo Guanabara para o portal CursoemVideo.com.\r\n', 1, '2018-12-04'),
(145, 39, 34, 'IntegraÃ§Ã£o HTML5 + PHP - Curso PHP Iniciante #08 - Gustavo Guanabara', 'Nessa oitava aula do Curso de PHP, vamos aprender como aumentar a interatividade dos nossos scripts PHP com formulÃ¡rios HTML5.\r\n', 1, '2018-12-04'),
(146, 39, 34, 'Estrutura Condicional if - Curso de PHP Iniciante #09 - Gustavo Guanabara', 'O PHP permite a criaÃ§Ã£o de condicÃµes. Nessa aula, veremos como utilizar a estrutura IF.\r\n\r\nA estrutura condicional em PHP Ã© representada da seguinte forma:\r\n\r\nif ($idade = 18) {\r\n $vota = true;\r\n} else {\r\n $vota = false;\r\n}\r\n\r\nEstruturas condicionais ', 1, '2018-12-04'),
(147, 39, 34, 'Estrutura Condicional Switch - Curso de PHP Iniciante #10 - Gustavo Guanabara', 'Estruturas de condiÃ§Ã£o de mÃºltipla escolha em PHP. Switch case em PHP usa a mesma sintaxe do Java e da Linguagem C e C++.\r\n', 1, '2018-12-04'),
(148, 39, 34, 'Estrutura de RepetiÃ§Ã£o While - Curso de PHP Iniciante #11 - Gustavo Guanabara', 'Vamos agora comeÃ§ar as Estruturas de RepetiÃ§Ã£o em PHP, partindo da estrutura WHILE (enquanto). \r\n\r\nA Estrutura While (enquanto), tambÃ©m conhecida como Estrutura de RepetiÃ§Ã£o com Teste LÃ³gico no inÃ­cio, realiza o teste de uma expressÃ£o lÃ³gica sem', 1, '2018-12-04'),
(149, 39, 34, 'Estrutura de RepetiÃ§Ã£o Do While - Curso de PHP Iniciante #12 - Gustavo Guanabara', 'Aula do Curso de PHP criado pelo professor Gustavo Guanabara para o portal CursoemVideo.com.\r\n', 1, '2018-12-04'),
(150, 39, 34, 'Estrutura de RepetiÃ§Ã£o For - Curso de PHP Iniciante #13 - Gustavo Guanabara', 'Aprenda a utilizar a estrutura de repetiÃ§Ã£o For do PHP com vÃ¡rios exercÃ­cios prÃ¡ticos, demonstraÃ§Ãµes detalhadas e exercÃ­cios de fixaÃ§Ã£o.\r\n', 1, '2018-12-04'),
(151, 39, 35, 'Rotinas em PHP - Parte 1 - Curso de PHP Iniciante #14 - Gustavo Guanabara', 'Aula do Curso de PHP criado pelo professor Gustavo Guanabara para o portal CursoemVideo.com.\r\n', 1, '2018-12-04'),
(152, 39, 35, 'Rotinas em PHP - Parte 2 - Curso PHP Iniciante #15 - Gustavo Guanabara', 'Criando funÃ§Ãµes e procedimentos em PHP com passagem de parÃ¢metros por valor e passagem de parÃ¢metros por referÃªncia. ', 1, '2018-12-04'),
(153, 39, 35, 'FunÃ§Ãµes String em PHP (Parte 1) - Curso PHP Iniciante #16 - Gustavo Guanabara', 'Nessa aula, veremos uma lista de funÃ§Ãµes para Strings usando PHP. SÃ£o funÃ§Ãµes internas que jÃ¡ existem na linguagem. A lista de funÃ§Ãµes de manipulaÃ§Ã£o de Strings que serÃ£o vistas nessa aula Ã© composta pelas instruÃ§Ãµes:', 1, '2018-12-04'),
(154, 39, 35, 'FunÃ§Ãµes String em PHP (Parte 2) - Curso PHP Iniciante #17 - Gustavo Guanabara', 'Aula do Curso de PHP criado pelo professor Gustavo Guanabara para o portal CursoemVideo.com.\r\n', 1, '2018-12-04'),
(155, 40, 36, 'Curso POO Teoria #01a - O que Ã© ProgramaÃ§Ã£o Orientada a Objetos', 'Nessa aula de POO, vamos aprender o que Ã© ProgramaÃ§Ã£o Orientada a Objetos e quais sÃ£o as suas principais vantagens em relaÃ§Ã£o a outros tipos de Linguagem de ProgramaÃ§Ã£o.\r\n', 1, '2018-12-04'),
(156, 40, 37, 'Curso POO PHP #01b - Instalando o XAMPP e o NetBeans', 'Nessa aula de POO, vamos aprender ...\r\n', 1, '2018-12-04'),
(157, 40, 36, 'Curso POO Teoria #02a - O que Ã© um Objeto?', 'Nessa aula de POO, vamos aprender os conceitos de Classes e Objetos, passando pela teoria de Atributos, MÃ©todos, Estado e InstÃ¢ncias. Veja como criar uma classe e instanciar, criando objetos.', 1, '2018-12-04'),
(158, 40, 37, 'Curso POO PHP #02b - Criando Classes e Objetos em PHP', 'Gostou da aula? EntÃ£o torne-se um Gafanhoto APOIADOR do CursoemVÃ­deo acessando o site apoie.me/cursoemvideo', 1, '2018-12-04'),
(159, 40, 36, 'Curso POO Teoria #03a - O que Ã© Visibilidade em um Objeto?', 'Nessa aula de POO, vamos aprender qual a importÃ¢ncia dos modificadores de visibilidade pÃºblico (+), privado (-) e protegido (#) na ProgramaÃ§Ã£o Orientada a Objetos.', 1, '2018-12-04'),
(160, 40, 37, 'Curso POO PHP #03b - Configurando Visibilidade de Atributos e MÃ©todos', 'Nessa aula de POO, vamos aprender na prÃ¡tica como utilizar os modificadores de visibilidade public, private e protected e qual Ã© o efeito de cada um deles.', 1, '2018-12-04'),
(161, 40, 36, 'Curso POO Teoria #04a - MÃ©todos Especiais', 'Nessa aula de POO, vamos aprender como funcionam os MÃ©todos Acessores (Getters), MÃ©todos Modificadores (Setters) e MÃ©todos Construtores (Construct) para a ProgramaÃ§Ã£o Orientada a Objetos.', 1, '2018-12-04'),
(162, 40, 37, 'Curso POO PHP #04b - MÃ©todos Getter, Setter e Construtor', 'Nessa aula de POO, vamos aprender como criar em PHP os MÃ©todos Acessores (Getters), MÃ©todos Modificadores (Setters) e MÃ©todos Construtores (Construct).', 1, '2018-12-04'),
(163, 40, 36, 'Curso POO Teoria #05a - Exemplo PrÃ¡tico com Objetos', 'Nessa aula de POO, vamos fazer um exemplo prÃ¡tico com ProgramaÃ§Ã£o Orientada a Objetos, usando tudo aquilo que aprendemos atÃ© aqui.', 1, '2018-12-04'),
(164, 40, 37, 'Curso POO PHP #05b - Exemplo PrÃ¡tico em PHP', 'Nessa aula de POO, vamos fazer um exercÃ­cio prÃ¡tico em PHP com ProgramaÃ§Ã£o Orientada a Objetos.', 1, '2018-12-04'),
(165, 40, 37, 'Curso POO PHP #06b - Encapsulamento', 'Nessa aula de POO, vamos aprender como fazer encapsulamento em PHP, entendendo melhor o primeiro dos trÃªs pilares da POO.', 1, '2018-12-04'),
(166, 40, 37, 'Curso POO PHP #07b - Objetos Compostos em PHP', 'Nessa aula de POO, vamos aprender a criar Objetos Compostos utilizando vetores em PHP.\r\n', 1, '2018-12-04'),
(167, 40, 37, 'Curso POO PHP #08b - AgregaÃ§Ã£o entre Objetos em PHP', 'Nessa aula de POO, vamos aprender como realizar a agregaÃ§Ã£o entre objetos usando a linguagem PHP.', 1, '2018-12-04'),
(168, 40, 37, 'Curso POO PHP #09b - ExercÃ­cio prÃ¡tico POO em PHP', 'Nessa aula de POO, vamos fazer um exercÃ­cio de ProgramaÃ§Ã£o Orientada a Objeto em PHP com tudo aquilo que aprendemos atÃ© aqui.', 1, '2018-12-04'),
(169, 40, 37, 'Curso POO PHP #10b - HeranÃ§a (Parte 1)', 'Nessa aula de POO, vamos aprender a aplicar o conceito de HeranÃ§a ao PHP.\r\n', 1, '2018-12-04'),
(170, 40, 37, 'Curso POO PHP #11b - HeranÃ§a (Parte 2)', 'Nessa aula de POO com PHP, vamos aprender a colocar a HeranÃ§a em prÃ¡tica, usando as tÃ©cnicas de HeranÃ§a de ImplementaÃ§Ã£o e HeranÃ§a para DiferenÃ§a.', 1, '2018-12-04'),
(171, 40, 37, 'Curso POO PHP #12b - Polimorfismo em PHP (Parte 1)', 'Nessa aula de POO, vamos aprender como fazer Polimorfismo de SobreposiÃ§Ã£o (Override) em PHP.', 1, '2018-12-04'),
(172, 40, 37, 'Curso POO PHP #13b - Polimorfismo Sobrecarga (Parte 2)', 'Nessa aula de POO, vamos aprender uma maneira alternativa de implementar sobrecarga aos mÃ©todos em PHP. Veja como fazer polimorfismo de sobrecarga em PHP.', 1, '2018-12-04'),
(173, 40, 37, 'Curso POO PHP #14b - Projeto Final em PHP (Parte 1)', 'Nessa aula de POO, vamos iniciar a construÃ§Ã£o de um exemplo completo de um modelo 100% construÃ­do em ProgramaÃ§Ã£o Orientada a Objetos com PHP.', 1, '2018-12-04'),
(174, 40, 37, 'Curso POO PHP #15b - Projeto Final em PHP (Parte 2)', 'Nessa aula de POO, vamos aplicar o modelo de agregaÃ§Ã£o em Classes utilizando linguagem PHP. Um exercÃ­cio prÃ¡tico e completamente feito em ProgramaÃ§Ã£o Orientada a Objetos.', 1, '2018-12-04'),
(175, 40, 36, 'Curso POO Teoria #06a - Pilares da POO: Encapsulamento', 'Nessa aula de POO, vamos aprender quais sÃ£o os trÃªs pilares da ProgramaÃ§Ã£o Orientada a Objetos e vamos estudar o primeiro pilar: o Encapsulamento da POO.', 1, '2018-12-04'),
(176, 40, 36, 'Curso POO Teoria #07a - Relacionamento entre Classes', 'Nessa aula de POO, vamos aprender como fazer relacionamentos entre as classes.\r\n', 1, '2018-12-04'),
(177, 40, 36, 'Curso POO teoria #08a - Relacionamento de AgregaÃ§Ã£o', 'Nessa aula de POO, vamos aprender como realizar um relacionamento de agregaÃ§Ã£o entre classes para gerar objetos ainda mais poderosos.', 1, '2018-12-04'),
(178, 40, 36, 'Curso POO Teoria #09 - ExercÃ­cios de POO', 'Nessa aula de POO, vamos fazer alguns exercÃ­cios de ProgramaÃ§Ã£o Orientada a Objeto conceituais que jÃ¡ apareceram em concursos. Coloque em prÃ¡tica tudo aquilo que aprendeu atÃ© aqui.', 1, '2018-12-04'),
(179, 40, 36, 'Curso POO Teoria #10a - HeranÃ§a (Parte 1)', 'Nessa aula de POO, vamos aprender o que Ã© HeranÃ§a em ProgramaÃ§Ã£o Orientada a Objetos.\r\n', 1, '2018-12-04'),
(180, 40, 36, 'Curso POO Teoria #11a - HeranÃ§a (Parte 2)', 'Nessa aula de POO, vamos aprender como funcionam os tipos de HeranÃ§a, que sÃ£o a HeranÃ§a de ImplementaÃ§Ã£o e HeranÃ§a para DiferenÃ§a. AlÃ©m disso, vamos ver algumas nomenclaturas importantes para a ProgramaÃ§Ã£o Orientada a Objetos.', 1, '2018-12-04'),
(181, 40, 36, 'Curso POO Teoria #12a - Conceito Polimorfismo (Parte 1)', 'Nessa aula de POO, vamos aprender como funciona o Polimorfismo em ProgramaÃ§Ã£o Orientada a Objetos, o terceiro pilar de teoria.', 1, '2018-12-04'),
(182, 40, 36, 'Curso POO Teoria #13a - Conceito Polimorfismo (Parte 2)', 'Nessa aula de POO, vamos aprender como aplicar o Polimorfismo de Sobrecarga Ã s nossas classes. Veja tambÃ©m a diferenÃ§a entre sobrecarga e sobreposiÃ§Ã£o, algo que muita gente confunde.', 1, '2018-12-04'),
(183, 40, 36, 'Curso POO conceito #14a - ExercÃ­cios de POO (Parte 2)', 'Nessa aula de POO, vamos fazer uma lista de exercÃ­cios de programaÃ§Ã£o orientada a objetos para vocÃª testar os seus conhecimentos adquiridos durante as 13 primeiras aulas do curso.', 1, '2018-12-04'),
(184, 40, 36, 'Curso POO conceito #15a - ExercÃ­cios de POO (Parte 3)', 'Nessa aula de POO, vamos fazer mais 10 ExercÃ­cios de ProgramaÃ§Ã£o Orientada a Objetos e continuar a construÃ§Ã£o do modelo do Diagrama de Classes da aula anterior. ', 1, '2018-12-04'),
(185, 41, 38, 'Curso de CSS3 - Aula 01 - IntroduÃ§Ã£o ao CSS3', 'Node Studio Treinamentos\r\nCursos completos de Desenvolvimento Web. 100% vÃ­deo aulas, acesso ilimitado e aprendizado garantido!', 1, '2018-12-04'),
(186, 41, 38, 'Curso de CSS3 - Aula 02 - Aplicando CSS e Sintaxe', '\r\nNode Studio Treinamentos\r\nCursos completos de Desenvolvimento Web. 100% vÃ­deo aulas, acesso ilimitado e aprendizado garantido!', 1, '2018-12-04'),
(188, 41, 39, 'Curso de CSS3 - Aula 03 - Seletor universal, Seletor tipo, Seletor atributo', 'Node Studio Treinamentos\r\nCursos completos de Desenvolvimento Web. 100% vÃ­deo aulas, acesso ilimitado e aprendizado garantido!', 1, '2018-12-04'),
(189, 41, 39, 'Curso de CSS3 - Aula 04 - Agrupamento de Seletores', 'Node Studio Treinamentos\r\nCursos completos de Desenvolvimento Web. 100% vÃ­deo aulas, acesso ilimitado e aprendizado garantido!', 1, '2018-12-04'),
(190, 41, 39, 'Curso de CSS3 - Aula 05 - Seletor Id e Class', 'Node Studio Treinamentos\r\nCursos completos de Desenvolvimento Web. 100% vÃ­deo aulas, acesso ilimitado e aprendizado garantido!', 1, '2018-12-04'),
(191, 41, 39, 'Curso de CSS3 - Aula 06 - DimensÃ£o (Width, Height, Max e Min)', 'Node Studio Treinamentos\r\nCursos completos de Desenvolvimento Web. 100% vÃ­deo aulas, acesso ilimitado e aprendizado garantido!', 1, '2018-12-04'),
(192, 41, 39, 'Curso de CSS3 - Aula 07 - Margin e Padding', '\r\nNode Studio Treinamentos\r\nCursos completos de Desenvolvimento Web. 100% vÃ­deo aulas, acesso ilimitado e aprendizado garantido!', 1, '2018-12-04'),
(193, 41, 39, 'Curso de CSS3 - Aula 08 - Text (Parte 01)', 'Node Studio Treinamentos\r\nCursos completos de Desenvolvimento Web. 100% vÃ­deo aulas, acesso ilimitado e aprendizado garantido!', 1, '2018-12-04'),
(194, 41, 39, 'Curso de CSS3 - Aula 09 - Text (Parte 02)', 'Node Studio Treinamentos\r\nCursos completos de Desenvolvimento Web. 100% vÃ­deo aulas, acesso ilimitado e aprendizado garantido!', 1, '2018-12-04'),
(195, 41, 39, 'Curso de CSS3 - Aula 10 - Box Sizing e Box Shadow', 'Node Studio Treinamentos\r\nCursos completos de Desenvolvimento Web. 100% vÃ­deo aulas, acesso ilimitado e aprendizado garantido!', 1, '2018-12-04'),
(196, 41, 39, 'Curso de CSS3 - Aula 11 - Overflow e Opacity', 'Node Studio Treinamentos\r\nCursos completos de Desenvolvimento Web. 100% vÃ­deo aulas, acesso ilimitado e aprendizado garantido!', 1, '2018-12-04'),
(197, 42, 40, 'Como somar os nÃºmeros - vÃ­deo educativo infantil', 'Como somar os nÃºmeros - vÃ­deo educativo infantil\r\n', 1, '2018-12-04'),
(198, 42, 40, 'Numeros de 1 a 10 e as cores - Numeros para educaÃ§Ã£o infantil - Cores infantil', 'Os nÃºmeros e as cores para a educaÃ§Ã£o infantil\r\n', 1, '2018-12-04'),
(199, 42, 40, 'Ensinando os nÃºmeros e a contar de 1 atÃ© 10 em portuguÃªs - para crianÃ§as', 'Ensinando os nÃºmeros e a contar de 1 a 10 em portuguÃªs, ideal para crianÃ§as a partir de um ano de idade.\r\n', 1, '2018-12-04'),
(200, 42, 40, 'Ensinando os nÃºmeros em portuguÃªs para crianÃ§as - Numero quatro', 'Ensinando os nÃºmeros em portuguÃªs para crianÃ§as - Numero quatro\r\n', 1, '2018-12-04'),
(201, 42, 41, 'Ensinando os nÃºmeros em portuguÃªs para crianÃ§as - Numero trÃªs', 'Neste terceiro vÃ­deo da sÃ©rie \"os nÃºmeros\" do canal Ensinando meu filho, vamos apresentar uma animaÃ§Ã£o criada especialmente para ensinar o nÃºmero dois, a ideia Ã© ensinar apenas um nÃºmero de cada vez. ', 1, '2018-12-04'),
(202, 42, 41, 'Ensinando os nÃºmeros em portuguÃªs para crianÃ§as - NÃºmero dois', 'Existem diversas formas de facilitar a aprendizagem das crianÃ§as, mas principalmente devemos tentar que seja um ensino natural, divertido e que entretenha, por isso oferecemos esta sÃ©rie didÃ¡tica para auxiliar no ensino dos nÃºmeros.', 1, '2018-12-04'),
(203, 42, 41, 'Ensinando os nÃºmeros em portuguÃªs para crianÃ§as - Numero um', 'Existem diversas formas de facilitar a aprendizagem das crianÃ§as, mas principalmente devemos tentar que seja um ensino natural, divertido e que entretenha, por isso oferecemos esta sÃ©rie didÃ¡tica para auxiliar no ensino dos nÃºmeros.\r\n\r\nNeste primeiro ', 1, '2018-12-04'),
(204, 43, 42, 'Curso Excel #01 - Como surgiu o Excel?', 'Nessa aula de Excel, vamos entender como nasceu o Excel (que antes se chamava Multiplan e depois XL) e como ele conseguiu vencer seus concorrentes VisiCalc e Lotus 1-2-3.', 1, '2018-12-04'),
(205, 43, 42, 'Veja 10 dicas e truques para utilizar no Microsoft Excel:', 'Curso Excel #02 - 10 Dicas e Truques para Excel\r\n', 1, '2018-12-04'),
(206, 43, 42, 'Curso Excel #03 - Primeiros Passos no Excel', 'Nessa aula de Excel, vamos aprender os primeiros passos no Microsoft Excel.\r\n', 1, '2018-12-04'),
(207, 43, 43, 'Curso Excel #04 - Manipulando Arquivos', 'Nessa aula de Excel, vamos aprender como abrir, salvar e compartilhar arquivos no Excel. AlÃ©m disso, vamos ver como manter uma pasta de trabalho na nuvem e compartilhar trabalhos no Excel utilizando o ambiente Web do Office Live e os aplicativos para iOS', 1, '2018-12-04'),
(208, 43, 43, 'Curso Excel #05 - Selecionando Dados', 'Nessa aula de Excel, vamos aprender maneiras rÃ¡pidas para selecionar cÃ©lulas no Excel e manipular dados de forma eficiente.', 1, '2018-12-04'),
(209, 43, 43, 'Curso Excel #06 - Formatando Planilhas', 'Nessa aula de Excel, vamos aprender como formatar cÃ©lulas de uma planilha utilizando um novo recurso do Excel. TambÃ©m veremos como formatar da maneira clÃ¡ssica.', 1, '2018-12-04'),
(210, 43, 43, 'Curso Excel #07 - Dicas para FormataÃ§Ã£o de Dados', 'Nessa aula de Excel, vamos aprender como formatar nÃºmeros em estilos especÃ­ficos, o que vai facilitar muito a visualizaÃ§Ã£o dos seus dados. TambÃ©m vamos aprender como ajustar largura e altura das cÃ©lulas e fazer mesclagem de cÃ©lulas', 1, '2018-12-04'),
(211, 43, 43, 'Curso Excel #08 - ClassificaÃ§Ã£o de Dados', 'Nessa aula de Excel, vamos aprender como classificar os dados em uma planilha. AlÃ©m disso, vocÃª vai aprender como formatar dados no Excel e dicas para digitaÃ§Ã£o mais veloz dessas informaÃ§Ãµes que vÃ£o compor a planilha.\r\n\r\nGostou da aula? EntÃ£o torn', 1, '2018-12-04'),
(212, 43, 43, 'Curso Excel #09 - FÃ³rmulas BÃ¡sicas', 'Nessa aula de Excel, vamos aprender a base para a criaÃ§Ã£o de fÃ³rmulas utilizando os operadores aritmÃ©ticos simples para realizar adiÃ§Ã£o, subtraÃ§Ã£o, multiplicaÃ§Ã£o, divisÃ£o e muito mais no Excel.', 1, '2018-12-04'),
(213, 44, 44, 'Aprenda React na prÃ¡tica - IntroduÃ§Ã£o', 'Parte 1 da sÃ©rie de vÃ­deos ensinando a usar a biblioteca ReactJS.\r\n', 1, '2018-12-04'),
(214, 44, 44, 'Aprenda React na prÃ¡tica - O projeto (Parte 2)', 'Neste vÃ­deo falo um pouco sobre o React e o que vamos desenvolver nesta primeira etapa, onde foco apenas no React.', 1, '2018-12-04'),
(215, 44, 44, 'Aprenda React na prÃ¡tica - ConfiguraÃ§Ãµes (Parte 3)', 'Neste vÃ­deo falo vamos preparar nosso ambiente de desenvolvimento para trabalhar com o React.\r\n', 1, '2018-12-04'),
(216, 44, 45, 'Aprenda React na prÃ¡tica - OlÃ¡ Mundo (Parte 4)', 'Neste vÃ­deo vamos fazer nosso \"OlÃ¡ Mundo\" no React.\r\n', 1, '2018-12-04'),
(217, 44, 45, 'Aprenda React na prÃ¡tica - Criando um contador (Parte 5)', 'Neste vÃ­deo vamos construir um simples contador, colocando em prÃ¡tica os conceitos bÃ¡sicos do React.\r\n', 1, '2018-12-04'),
(218, 44, 45, 'Aprenda React na prÃ¡tica - Pensando em React (Parte 6)', 'Neste vÃ­deo vamos aprender a como organizar as idÃ©ias quando formos criar nossos componentes React.', 1, '2018-12-04'),
(219, 44, 45, 'Aprenda React na prÃ¡tica - Criando o componente estÃ¡tico (Parte 7)', 'Neste vÃ­deo vamos criar de maneira estÃ¡tica nosso componente Placar.\r\n', 1, '2018-12-04'),
(220, 44, 45, 'Aprendendo React na prÃ¡tica - Props (Parte 8)', 'Neste vÃ­deo vamos deixar nosso componente Placar completamente funcional criando props e states, transferindo propriedades e reaproveitando componentes.', 1, '2018-12-04'),
(221, 44, 45, 'Aprenda React na prÃ¡tica - Refatorando o componente (Parte 9)', 'Neste vÃ­deo vamos fazer pequenos ajustes para deixar nosso componente mais robusto.\r\n', 1, '2018-12-04'),
(222, 44, 45, 'Aprenda React na prÃ¡tica - PropTypes (Parte 10)', 'Neste vÃ­deo vamos aprender a como utilizar PropTypes para encapsular os dados que serÃ£o passados para um componente.\r\n', 1, '2018-12-04'),
(223, 44, 45, 'Aprenda React na prÃ¡tica - ConclusÃ£o (parte 11)', 'ParabÃ©ns! VocÃª chegou atÃ© o final da primeira sÃ©rie de React do Canal :)\r\n', 1, '2018-12-04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas_video_url`
--

CREATE TABLE `aulas_video_url` (
  `id` int(11) NOT NULL,
  `id_aula` int(11) NOT NULL,
  `video_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aulas_video_url`
--

INSERT INTO `aulas_video_url` (`id`, `id_aula`, `video_url`) VALUES
(48, 55, 'https://www.youtube.com/embed/iZ1ucWosOww'),
(49, 56, 'https://www.youtube.com/embed/awabKnGTR1c'),
(50, 57, 'https://www.youtube.com/embed/xgSSoUIr-Zg'),
(51, 58, 'https://www.youtube.com/embed/0fL7Xmq8ltk'),
(52, 59, 'https://www.youtube.com/embed/GwvVQZ5miuI'),
(53, 60, 'https://www.youtube.com/embed/GwvVQZ5miuI'),
(54, 61, 'https://www.youtube.com/embed/lSyC8_6vNVQ'),
(55, 62, 'https://www.youtube.com/embed/l0KA-PNu81Q'),
(56, 63, 'https://www.youtube.com/watch?v=8mei6uVttho&list=PLHz_AreHm4dmSj0MHol_aoNYCSGFqvfXV'),
(57, 64, 'https://www.youtube.com/watch?v=M2Af7gkbbro'),
(58, 65, 'https://www.youtube.com/watch?v=RDrfZ-7WE8c'),
(59, 66, 'https://www.youtube.com/watch?v=Ig4QZNpVZYs'),
(60, 67, 'https://www.youtube.com/watch?v=GrPkuk1ezyo'),
(61, 68, 'https://www.youtube.com/watch?v=v2nCgGSVCeE'),
(62, 69, 'https://www.youtube.com/watch?v=_g05aHdBAEY'),
(63, 70, 'https://www.youtube.com/watch?v=7gGFHzqh4d8'),
(64, 71, 'https://www.youtube.com/watch?v=U5PnCt58Q68'),
(65, 72, 'https://www.youtube.com/watch?v=fP49L1i_-HU'),
(66, 73, 'https://www.youtube.com/embed/Ofktsne-utM'),
(67, 74, 'https://www.youtube.com/embed/5JbAOWJbgIA&list=PLHz_AreHm4dkBs-795Dsgvau_ekxg8g1r'),
(68, 75, 'https://www.youtube.com/embed/R2HrwSQ6EPM'),
(69, 76, 'https://www.youtube.com/embed/m9YPlX0fcJk'),
(70, 77, 'https://www.youtube.com/embed/cHLKtALWDos'),
(71, 78, 'https://www.youtube.com/embed/NCG9niOlm40'),
(72, 79, 'https://www.youtube.com/embed/To9qUcEMuY0'),
(73, 80, 'https://www.youtube.com/embed/wXViczeTr6Q'),
(74, 81, 'https://www.youtube.com/embed/w6OYS_M7hTM'),
(75, 82, 'https://www.youtube.com/embed/OaPMvrA0cA4'),
(76, 83, 'https://www.youtube.com/embed/EC_1ZtXsUtA'),
(77, 84, 'https://www.youtube.com/embed/GaOlyL3Uv9M'),
(78, 85, 'https://www.youtube.com/embed/q4hPo83-Buo'),
(79, 86, 'https://www.youtube.com/embed/ocyVJ9gRUaE'),
(80, 87, 'https://www.youtube.com/embed/8fxKJWJcRTw'),
(81, 88, 'https://www.youtube.com/embed/paZNDJAPT4E'),
(82, 89, 'https://www.youtube.com/embed/jx2ne8iZMOA'),
(83, 90, 'https://www.youtube.com/embed/stmPydPcDAQ'),
(84, 91, 'https://www.youtube.com/embed/oBHrtUrq9p0'),
(85, 92, 'https://www.youtube.com/embed/MKHffejfugQ'),
(86, 93, 'https://www.youtube.com/embed/CBLDvBLoE6w'),
(87, 94, 'https://www.youtube.com/embed/thC3dezbKXs'),
(88, 95, 'https://www.youtube.com/embed/CisDKrxYP9M'),
(89, 96, 'https://www.youtube.com/embed/aB5-Kb29U2Q'),
(90, 97, 'https://www.youtube.com/embed/3Gfx7tH6rQY'),
(91, 98, 'https://www.youtube.com/embed/e6xsAVfV3zo'),
(92, 99, 'https://www.youtube.com/embed/DlPIn5FDl_Y'),
(93, 100, 'https://www.youtube.com/embed/VR2O6PpEYhA'),
(94, 101, 'https://www.youtube.com/embed/kgZEm3Wns4E'),
(95, 102, 'https://www.youtube.com/embed/IZ0wRgf8EAc'),
(96, 103, 'https://www.youtube.com/embed/FsJkaAnd9uY'),
(97, 104, 'https://www.youtube.com/embed/TK2xG1328x0'),
(98, 105, 'https://www.youtube.com/embed/obD7m0R6TvM'),
(99, 106, 'https://www.youtube.com/embed/G6qBQYPAZhc'),
(100, 107, 'https://www.youtube.com/embed/ajtgGocKYBU'),
(101, 108, 'https://www.youtube.com/embed/IZM7rYFMjiA'),
(102, 109, 'https://www.youtube.com/embed/S9uPNppGsGo'),
(103, 110, 'https://www.youtube.com/embed/Mp0vhMDI7fA'),
(104, 111, 'https://www.youtube.com/embed/VuKvR1J2LQE'),
(105, 112, 'https://www.youtube.com/embed/31llNGKWDdo'),
(106, 113, 'https://www.youtube.com/embed/ElRd0cbXIv4'),
(107, 114, 'https://www.youtube.com/embed/nIHq1MtJaKs'),
(108, 115, 'https://www.youtube.com/embed/FNqdV5Zb_5Q'),
(109, 116, 'https://www.youtube.com/embed/PB254Cfjlyk'),
(110, 117, 'https://www.youtube.com/embed/tHYxjJxtJko'),
(111, 118, 'https://www.youtube.com/embed/664e0G_S9nU'),
(112, 119, 'https://www.youtube.com/embed/mqcNw_dhl8I'),
(113, 120, 'https://www.youtube.com/embed/_QfISzy0IKs'),
(114, 121, 'https://www.youtube.com/embed/KjcdG05EAZc'),
(115, 122, 'https://www.youtube.com/embed/qajq3SI0QQs'),
(116, 123, 'https://www.youtube.com/embed/xM4AX3Lp2mo'),
(117, 124, 'https://www.youtube.com/embed/mzSJpn9ldt4'),
(118, 125, 'https://www.youtube.com/embed/4MAmKOT9FeU'),
(119, 126, 'https://www.youtube.com/embed/cTkivN8XcJ0'),
(120, 127, 'https://www.youtube.com/embed/9l_Gay8BuAw'),
(121, 128, 'https://www.youtube.com/embed/ipHuSfOYhwA'),
(122, 129, 'https://www.youtube.com/embed/ZW02MWzZXPE'),
(123, 130, 'https://www.youtube.com/embed/TWmlIbvTjRo'),
(124, 131, 'https://www.youtube.com/embed/2sZerMlCzBM'),
(125, 132, 'https://www.youtube.com/embed/rDfpq25OP_Q'),
(126, 133, 'https://www.youtube.com/embed/MPgVZzUBTlw'),
(127, 134, 'https://www.youtube.com/embed/dJ88VdZMYKY'),
(128, 135, 'https://www.youtube.com/embed/KpA6Idl9-a0'),
(129, 136, 'https://www.youtube.com/embed/mchmZKNBjLA'),
(130, 137, 'https://www.youtube.com/embed/zAPDX_IkNds'),
(131, 138, 'https://www.youtube.com/embed/F7KzJ7e6EAc'),
(132, 139, 'https://www.youtube.com/embed/Eup6utTPe2U'),
(133, 140, 'https://www.youtube.com/embed/3ltZBbKACh4'),
(134, 141, 'https://www.youtube.com/embed/DGZS9KrlrjI'),
(135, 142, 'https://www.youtube.com/embed/fCZdbl9-qkw'),
(136, 143, 'https://www.youtube.com/embed/NuBt0B_GeEo'),
(137, 144, 'https://www.youtube.com/embed/YrmPk8zL9Qw'),
(138, 145, 'https://www.youtube.com/embed/gvZfP2iBkw4'),
(139, 146, 'https://www.youtube.com/embed/qAisUeI5oKE'),
(140, 147, 'https://www.youtube.com/embed/thElQ5IhM1Q'),
(141, 148, 'https://www.youtube.com/embed/3jk8fSWpQIg'),
(142, 149, 'https://www.youtube.com/embed/6QymvmX3YJU'),
(143, 150, 'https://www.youtube.com/embed/ancrPpEq9Rw'),
(144, 151, 'https://www.youtube.com/embed/7V6MdZQFArc'),
(145, 152, 'https://www.youtube.com/embed/o3y8af8rSKM'),
(146, 153, 'https://www.youtube.com/embed/hQLyylI2LwI'),
(147, 154, 'https://www.youtube.com/embed/1KdhIz0Gh5A'),
(148, 155, 'https://www.youtube.com/embed/KlIL63MeyMY'),
(149, 156, 'https://www.youtube.com/embed/5Ptu_IWFgdY'),
(150, 157, 'https://www.youtube.com/embed/aR7CKNFECx0'),
(151, 158, 'https://www.youtube.com/embed/djYrOHJc5Jg'),
(152, 159, 'https://www.youtube.com/embed/jFI-qqitzwk'),
(153, 160, 'https://www.youtube.com/embed/48NaNTtcguA'),
(154, 161, 'https://www.youtube.com/embed/g2x9oyBFSco'),
(155, 162, 'https://www.youtube.com/embed/0G566D5qGH8'),
(156, 163, 'https://www.youtube.com/embed/ull_DVFFOq0'),
(157, 164, 'https://www.youtube.com/embed/KR9xaLwTw-E'),
(158, 165, 'https://www.youtube.com/embed/ITV8l371MZw'),
(159, 166, 'https://www.youtube.com/embed/__v_RNXBbTg'),
(160, 167, 'https://www.youtube.com/embed/lOOYBUQSRWU'),
(161, 168, 'https://www.youtube.com/embed/tIGJU26hzG4'),
(162, 169, 'https://www.youtube.com/embed/8qgyXlSA1PY'),
(163, 170, 'https://www.youtube.com/embed/TCzPSKI0l7U'),
(164, 171, 'https://www.youtube.com/embed/rJ0MSmvsuiY'),
(165, 172, 'https://www.youtube.com/embed/78aEA6H92r8'),
(166, 173, 'https://www.youtube.com/embed/fy0zj2wv0Wc'),
(167, 174, 'https://www.youtube.com/embed/AfRyRBVETO8'),
(168, 175, 'https://www.youtube.com/embed/1wYRGFXpVlg'),
(169, 176, 'https://www.youtube.com/embed/GLHbxDU9iBA'),
(170, 177, 'https://www.youtube.com/embed/ERdvijGtrq0'),
(171, 178, 'https://www.youtube.com/embed/TaqBuubOBgI'),
(172, 179, 'https://www.youtube.com/embed/_PZldwo0vVo'),
(173, 180, 'https://www.youtube.com/embed/He887D2WGVw'),
(174, 181, 'https://www.youtube.com/embed/9-3-RMEMcq4'),
(175, 182, 'https://www.youtube.com/embed/hYek1xqWzgs'),
(176, 183, 'https://www.youtube.com/embed/SgubvKWfHKo'),
(177, 184, 'https://www.youtube.com/embed/h2T5cktV79w'),
(178, 185, 'https://www.youtube.com/embed/FRhM6sMOTfg'),
(179, 186, 'https://www.youtube.com/embed/JOz8I_EWve8'),
(180, 187, 'https://www.youtube.com/embed/-vU1WZ0IYq8'),
(181, 188, 'https://www.youtube.com/embed/-vU1WZ0IYq8'),
(182, 189, 'https://www.youtube.com/embed/S4O5_aiZ3Tc'),
(183, 190, 'https://www.youtube.com/embed/C6gZd3vCN1c'),
(184, 191, 'https://www.youtube.com/embed/URgJTug9BlI'),
(185, 192, 'https://www.youtube.com/embed/5TIhtyMDr90'),
(186, 193, 'https://www.youtube.com/embed/wFBdeRK20GY'),
(187, 194, 'https://www.youtube.com/embed/qoyawPI-VNM'),
(188, 195, 'https://www.youtube.com/embed/ICg7okVKggQ'),
(189, 196, 'https://www.youtube.com/embed/VSPxqGHvE2A'),
(190, 197, 'https://www.youtube.com/embed/kq0kh0XvT9c'),
(191, 198, 'https://www.youtube.com/embed/8Up3HTFDnes'),
(192, 199, 'https://www.youtube.com/embed/f3Fsh5QE0OU'),
(193, 200, 'https://www.youtube.com/embed/wHybIAcb5ko'),
(194, 201, 'https://www.youtube.com/embed/drz86j8ukTY'),
(195, 202, 'https://www.youtube.com/embed/Xqq2GYZGWeI'),
(196, 203, 'https://www.youtube.com/embed/WgM7HV8nj1Q'),
(197, 204, 'https://www.youtube.com/embed/ZVURQLXZtIc'),
(198, 205, 'https://www.youtube.com/embed/yCRUWtDcrJQ'),
(199, 206, 'https://www.youtube.com/embed/X4RLqvl0Ch8'),
(200, 207, 'https://www.youtube.com/embed/4dBE45hiDz8'),
(201, 208, 'https://www.youtube.com/embed/ZPQIm6_0Z5A'),
(202, 209, 'https://www.youtube.com/embed/nM3GqVDfREI'),
(203, 210, 'https://www.youtube.com/embed/JF8lit7wrrM'),
(204, 211, 'https://www.youtube.com/embed/8mV30b60YYQ'),
(205, 212, 'https://www.youtube.com/embed/_-2deLFAJeM'),
(206, 213, 'https://www.youtube.com/embed/0k3czp6O-qg'),
(207, 214, 'https://www.youtube.com/embed/rwkvChKb8zQ'),
(208, 215, 'https://www.youtube.com/embed/rHcmZQ2n2cQ'),
(209, 216, 'https://www.youtube.com/embed/NfCgYreubP4'),
(210, 217, 'https://www.youtube.com/embed/d5I0nQEyAnw'),
(211, 218, 'https://www.youtube.com/embed/rBRfQHRnhL0'),
(212, 219, 'https://www.youtube.com/embed/LzwE6vixNBU'),
(213, 220, 'https://www.youtube.com/embed/eQV-UV0oz9k'),
(214, 221, 'https://www.youtube.com/embed/haATzIEYxHM'),
(215, 222, 'https://www.youtube.com/embed/MkPMV4M_aqM'),
(216, 223, 'https://www.youtube.com/embed/2kWibaSSBas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `visibilidade` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id`, `id_owner`, `titulo`, `descricao`, `thumbnail`, `visibilidade`, `id_sala`) VALUES
(33, 5, 'Curso HTML', 'Aprenda HTML e como as pÃ¡ginas da WEB funcionam de um jeito simples e muito fÃ¡cil!', '46f0403030ee532ac7927efe3f93fa55.jpg', 1, 0),
(34, 5, 'LÃ³gica de ProgramaÃ§Ã£o', 'Veja como funcionam as linguagens de programaÃ§Ã£o e a lÃ³gica por trÃ¡s delas!', 'cfeae0a927ae0fecd78d36b7db210f8d.jpg', 1, 0),
(35, 5, 'Banco de Dados MySQL ', 'Estrutura dos dados, como funcionam e muito mais nesse curso!', '7b8032f0dbf269ea838ccdf157663120.png', 1, 0),
(36, 5, 'Aplicativos para Android', 'Desenvolva Apps para android, de um modo fÃ¡cil e simples com este maravilhoso curso!', '9b773c5090872a7660a38b347a64742e.jpg', 1, 0),
(37, 6, 'Curso Python', 'VocÃª estÃ¡ pensando em ser um Programador e nÃ£o sabe por onde comeÃ§ar? Pois nesse curso vamos te dar todas as informaÃ§Ãµes e mostrar o caminho a seguir.', '9dfbc06c88faa6e9787a81d2d63acd02.jpg', 1, 0),
(38, 6, 'Curso Javascript', 'VocÃª tem medo de javascript? Perca o medo agora com esse curso, aprendendo todos os conceitos e a linguagem! ', '17cecd77e5b2a65b622928281def2fda.png', 1, 0),
(39, 6, 'Curso PHP', 'PHP nunca foi tÃ£o fÃ¡cil de apender! Ingresse agora no curso e aprenda mais!', '12ed1bbb0889622d6fe96545e1e8c854.jpg', 1, 0),
(40, 6, 'PHP Orientado a Objeto', 'Se vocÃª jÃ¡ aprendeu PHP, dÃª um passo a frente e aprenda como programar Orientado a Objeto!', '37b4e02e93dfdd104518d7e5b8100798.png', 1, 0),
(41, 6, 'Aprenda CSS de uma vez', 'Aprenda CSS e estilize seu site de uma maneira incrÃ­vel! Com o CSS serÃ¡ possÃ­vel fazer animaÃ§Ãµes, estilos e muito mais.', 'd49ab22f98199dd4788641d961dde2f9.png', 1, 0),
(42, 7, 'MatemÃ¡tica para crianÃ§as', 'Aprenda matemÃ¡tica para programaÃ§Ã£o de sistemas.', 'dce5bcc0c9b2c754ac986a97ca83f3bc.jpg', 1, 0),
(43, 7, 'Planilhas', 'Hoje em dia, as planilhas sÃ£o os sistemas de dados mais utilizados no mercado. Aprenda mais com esse curso e fique expert!', 'cbb11777f2bbc00b47638112f69e7f5d.jpg', 1, 0),
(44, 7, 'ReactJS', 'Aprenda essa Framework de um jeito simples e fÃ¡cil. ', '73521191ab26847c514b13342822a403.png', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos_tag_ref`
--

CREATE TABLE `cursos_tag_ref` (
  `id_ref` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cursos_tag_ref`
--

INSERT INTO `cursos_tag_ref` (`id_ref`, `id_curso`, `id_tag`) VALUES
(25, 33, 50),
(26, 33, 54),
(27, 33, 61),
(28, 34, 62),
(29, 34, 63),
(30, 34, 64),
(31, 35, 65),
(32, 35, 66),
(33, 35, 67),
(34, 36, 68),
(35, 36, 69),
(36, 36, 70),
(37, 36, 71),
(38, 37, 72),
(39, 37, 62),
(43, 39, 75),
(44, 39, 76),
(45, 40, 75),
(46, 40, 77),
(47, 40, 78),
(48, 41, 51),
(49, 41, 79),
(50, 41, 80),
(55, 43, 84),
(56, 43, 66),
(57, 44, 85),
(58, 44, 73),
(107, 38, 73),
(108, 38, 62),
(109, 38, 74),
(133, 42, 48),
(134, 42, 81),
(135, 42, 82),
(136, 42, 83);

-- --------------------------------------------------------

--
-- Estrutura da tabela `instrutor`
--

CREATE TABLE `instrutor` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `instrutor`
--

INSERT INTO `instrutor` (`id`, `nome`, `sobrenome`, `usuario`, `email`, `senha`, `profile_pic`) VALUES
(5, 'Mateus', 'De Nardo', 'mateus', 'mateus@email.com', 'mateus', 'a2340a5dbac6b8748a75bd3723559d23.png'),
(6, 'Gustavo', 'Kendi', 'gustavokendi', 'kendiborges2001@gmail.com', 'cristianoronaldo', 'afccc79e0b21d9b8b174c2360c7ea137.png'),
(7, 'Matheus', 'Henrique', 'Matheus ', 'hpmartinez8000@gmail.com', '123', 'fd65e91eacd5278c0b91dfb4b29b0dc0.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `labaula_conteudo1`
--

CREATE TABLE `labaula_conteudo1` (
  `id` int(11) NOT NULL,
  `id_aula` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `dialog` text NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `labaula_conteudo1`
--

INSERT INTO `labaula_conteudo1` (`id`, `id_aula`, `id_curso`, `dialog`, `img`) VALUES
(10, 58, 17, ' Na internet, tome cuidado com pessoas que vocÃª nÃ£o conhece, porque podem ser mal-intencionadas! Nunca passe suas informaÃ§Ãµes pessoais, como: senhas, documentos e entre outros, fique esperto com as coisas que sÃ£o oferecidas, nÃ£o aceite brindes ou prÃªmios sem saber se Ã© seguro ou nÃ£o! ', '37c610bf28fb83827dfa62876f46d18e.png'),
(11, 59, 17, 'VocÃª sabia que a palavra â€œfakeâ€ veio do inglÃªs e significa falso?! Ã‰ usado quando alguÃ©m quer se passar por outra pessoa ou atÃ© mesmo alguÃ©m que nÃ£o existe. Tome cuidado porque essas podem ser pessoas mal-intencionadas querendo fazer algum mal e nÃ£o ser pego depois por estar usando uma conta falsa. ', 'cd0f41f9967e00bb7e4bc62e5e593020.png'),
(12, 61, 17, 'Maravilha! Agora que vocÃª jÃ¡ sabe como descobrir uma conta falsa, podemos ir para o prÃ³ximo passo, os temidos vÃ­rus!<br></br>\r\nPrimeiro vamos entender o que Ã© um vÃ­rus...\r\nVÃ­rus sÃ£o pequenos programas feitos para fazer algum dano ao usuÃ¡rio do computador.Agora, para que alguÃ©m lanÃ§aria um vÃ­rus pela internet? Bom, os vÃ­rus podem apagar documentos, alterar o sistema infectando ele ou roubar informaÃ§Ãµes secretas! \r\n', 'e4144a4c8e8c428cfe24ac388bd21a0d.jpg'),
(13, 64, 22, 'tsadsadsadsadsad', 'af2718d065093921545dccb29781155a.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `labaula_conteudo2`
--

CREATE TABLE `labaula_conteudo2` (
  `id` int(11) NOT NULL,
  `id_aula` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `dialog1` text NOT NULL,
  `dialog2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `labaula_conteudo2`
--

INSERT INTO `labaula_conteudo2` (`id`, `id_aula`, `id_curso`, `dialog1`, `dialog2`) VALUES
(41, 57, 17, 'OlÃ¡, nessas aulas vamos aprender um pouco sobre como podemos manter o nosso computador seguro e navegar com seguranÃ§a! ', 'Existem muitas coisas ruins que podem acontecer no seu computador e na internet, como um vÃ­rus, e Ã© muito importante saber como evitar que essas coisas aconteÃ§am e como lidar com isso. '),
(42, 60, 17, 'Agora que vocÃª jÃ¡ sabe o que Ã© uma conta falsa, da uma olhadinha nessas dicas de como descobrir uma:', 'â¦	Busque pela pessoa no Google:  vocÃª pode pesquisar o nome da pessoa no Google para ver se ela realmente existe.<br></br>\r\nâ¦	Veja os dados da pessoa que estÃ£o disponÃ­veis: se a pessoa diz morar em uma cidade, veja se seus amigos sÃ£o da mesma cidade, procure tambÃ©m por informaÃ§Ãµes como escolas ou trabalho.<br></br>\r\nâ¦	Pesquise por outras redes sociais: geralmente uma pessoa estÃ¡ em mais de uma rede social. Procurar pela pessoa em outras redes sociais pode ajudar a ver se ela Ã© verdadeira. <br></br>\r\nâ¦	Veja com quem ela fala: veja com quem essa pessoa conversa nas publicaÃ§Ãµes, se essas contas tambÃ©m forem suspeitas, desconfie. <br></br>\r\nâ¦	Procure por amigos em comum: veja se a pessoa tem amigos em comum e fale com seu amigos para ver se a pessoa Ã© real.<br></br>\r\nâ¦	Desconfie de pessoas famosas: a maioria das redes sociais dÃ£o a pessoas conhecidas um selo de conta verificada, o que significa que a rede social confirma se a pessoal Ã© realmente quem diz ser.<br></br>\r\nâ¦	  Poucas ou nenhuma foto: geralmente as pessoas compartilham fotos nas redes sociais e tambÃ©m sÃ£o marcadas em fotos por amigos e famÃ­lia, se essa pessoa possui pouca ou nenhuma foto ou marcaÃ§Ã£o, desconfie. <br></br>\r\nâ¦	Fotos copiadas: muitos â€œfakesâ€ copiam a identidade de outra pessoa e usam fotos dessa pessoa para fazer parecer real. Para ver se a foto que a pessoa usa Ã© realmente dela use a pesquisa por foto no Google e veja os resultados.\r\n'),
(43, 62, 17, 'Aqui estÃ£o alguns tipos de vÃ­rus que sÃ£o facilmente encontrados ao navegar na internet:', 'â¦	Backdoors, Cavalos de TrÃ³ia e Keyloggers: Esses vÃ­rus aparecem escondidos em arquivos baixados pela internet. Quando o arquivo for executado, ele libera o vÃ­rus, que abre uma porta para o hacker que entÃ£o vai poder controlar o computador infectado e roubar informaÃ§Ãµes. <br></br>\r\nâ¦	Adware ou Virus de propagandas: o Adware vem do inglÃªs â€œadâ€=anÃºncio e â€œsoftwareâ€=programa, sÃ£o programas que mostram propagandas e anÃºncios sem a autorizaÃ§Ã£o do usuÃ¡rio, fazendo com que o computador fique mais lento e a conexÃ£o tambÃ©m, mostrando muitas propagandas desnecessÃ¡rias.\r\n'),
(44, 63, 17, 'EntÃ£o como podemos proteger nossos computadores dos vÃ­rus? \r\n', 'â¦	Use um antivÃ­rus: eles oferecem uma proteÃ§Ã£o ao seu computador, analisando todos os arquivos do computador e descobrindo se tÃªm vÃ­rus ou nÃ£o, e entÃ£o se livrando deles.<br></br>\r\nâ¦	Sempre atualize o computador: mantendo o sistema atualizado vai ser mais difÃ­cil para os hackers conseguirem se infiltrar no computador.<br></br>\r\nâ¦	NÃ£o acesse sites e baixe arquivos desconhecidos.<br></br>\r\nâ¦	Tente nÃ£o clicar em propagandas.\r\n'),
(45, 65, 22, 'aaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `labcourses`
--

CREATE TABLE `labcourses` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `color` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `labcourses`
--

INSERT INTO `labcourses` (`id`, `titulo`, `descricao`, `color`, `img`) VALUES
(17, 'SeguranÃ§a', 'Navegue seguro na internet com essas dicas infalÃ­veis. ', 'rgb(66, 204, 20)', '5ed7d1078e2126b09102f38160c1faf0.png'),
(18, 'Sistemas', 'Aprenda sobre os diversos sistemas de computadores no mundo e suas curiosidades.', 'rgb(223, 32, 32)', 'c69bed5fd973bbd1662f877aa08d907e.png'),
(19, 'PeÃ§as', 'Com esse curso ficarÃ¡ fÃ¡cil entender como um computador Ã© montado e como ele funciona!', 'rgb(24, 134, 236)', '83885d64395db279bfe5e0443eada27d.png'),
(20, 'Internet', 'Aprenda programaÃ§Ã£o para a web e faÃ§a pÃ¡ginas incrÃ­veis!', 'rgb(0, 204, 255)', '2057263ca3f2beb6bece2a5ae21d38a8.png'),
(22, 'ProgramaÃ§Ã£o', 'Aprenda programaÃ§Ã£o de um jeito fÃ¡cil!', 'rgb(22, 233, 177)', '0054686f05634c1f456800fadc1208e7.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lab_aula`
--

CREATE TABLE `lab_aula` (
  `id` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `type` int(11) NOT NULL,
  `ordem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `lab_aula`
--

INSERT INTO `lab_aula` (`id`, `id_curso`, `titulo`, `datetime`, `type`, `ordem`) VALUES
(57, 17, 'IntroduÃ§Ã£o', '2018-11-01 13:06:42', 2, 1),
(58, 17, 'Desconhecidos', '2018-11-01 13:07:35', 1, 2),
(59, 17, 'Desconhecidos: UsuÃ¡rios â€œFakesâ€', '2018-11-01 13:07:50', 1, 3),
(60, 17, 'Desconhecidos: Como descobrir uma conta â€œfakeâ€', '2018-11-01 14:02:09', 2, 4),
(61, 17, 'VÃ­rus', '2018-11-01 14:03:38', 1, 5),
(62, 17, 'VÃ­rus: Tipos de VÃ­rus', '2018-11-01 14:05:33', 2, 6),
(63, 17, 'VÃ­rus: Como evitar?', '2018-11-01 14:05:58', 2, 7),
(64, 22, 'teste', '2018-11-20 08:18:56', 1, 1),
(65, 22, 'sadsadsa', '2018-11-20 08:19:07', 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `id_course` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `modules`
--

INSERT INTO `modules` (`id`, `id_course`, `name`) VALUES
(19, 33, 'IntroduÃ§Ã£o'),
(20, 33, 'MÃ³dulo 2: TÃ©cnicas'),
(21, 34, 'Modulo 1: IntroduÃ§Ã£o'),
(22, 34, 'Modulo 2: Desenvolvendo'),
(23, 34, 'Estruturas Condicionais 1'),
(25, 35, 'IntroduÃ§Ã£o'),
(26, 35, 'Desenvolvendo'),
(27, 36, 'Modulo 1: IntroduÃ§Ã£o'),
(28, 36, 'Modulo 2: Desenvolvendo'),
(29, 36, 'Modulo 3: Criando jogos'),
(30, 37, 'Modulo 1: IntroduÃ§Ã£o'),
(31, 37, 'Modulo 2: Desenvolvendo'),
(32, 38, 'Modulo 1: Conceitos'),
(33, 39, 'Modulo 1: IntroduÃ§Ã£o'),
(34, 39, 'Modulo 2: Conceitos'),
(35, 39, 'Modulo 3: Desenvolvendo'),
(36, 40, 'Modulo 1: Teoria'),
(37, 40, 'Modulo 2: PrÃ¡tica'),
(38, 41, 'Modulo 1: IntroduÃ§Ã£o'),
(39, 41, 'Modulo 2: Conceitos'),
(40, 42, 'Modulo 1: IntroduÃ§Ã£o'),
(41, 42, 'Modulo 2'),
(42, 43, 'Modulo 1: IntroduÃ§Ã£o'),
(43, 43, 'Modulo 2: Desenvolvendo'),
(44, 44, 'Modulo 1: IntroduÃ§Ã£o'),
(45, 44, 'Modulo 2: Desenvolvendo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `nota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `rating`
--

INSERT INTO `rating` (`id`, `id_aluno`, `id_curso`, `nota`) VALUES
(3, 13, 33, 4),
(4, 14, 33, 3),
(5, 13, 34, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sala`
--

CREATE TABLE `sala` (
  `id_sala` int(11) NOT NULL,
  `id_dono` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sala`
--

INSERT INTO `sala` (`id_sala`, `id_dono`, `nome`, `senha`) VALUES
(1, 5, 'InformÃ¡tica 3A', 'info'),
(2, 5, 'Grupo de Apoio', ''),
(3, 5, 'Monitoria 1', ''),
(4, 5, 'Monitoria 3', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sala_entrada`
--

CREATE TABLE `sala_entrada` (
  `id_entrada` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL,
  `id_aluno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sala_entrada`
--

INSERT INTO `sala_entrada` (`id_entrada`, `id_sala`, `id_aluno`) VALUES
(1, 1, 13),
(4, 4, 13),
(5, 2, 13),
(7, 2, 16),
(8, 2, 17);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tags`
--

CREATE TABLE `tags` (
  `id_tag` int(11) NOT NULL,
  `tag_word` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tags`
--

INSERT INTO `tags` (`id_tag`, `tag_word`) VALUES
(34, 'thumb'),
(35, 'imagem'),
(36, 'agua'),
(37, 'sadsadsa'),
(38, 'redes'),
(39, 'computadores'),
(40, 'mundo'),
(41, 'reds'),
(42, 'rede'),
(43, 'dsadas'),
(44, 'sadsad'),
(45, 'java'),
(46, 'orientado a objeto'),
(47, 'code'),
(48, 'matematica'),
(49, 'inteligencia'),
(50, 'html'),
(51, 'css'),
(52, 'webdesign'),
(53, 'pagina'),
(54, 'web'),
(55, 'aa'),
(56, 'dsa'),
(57, 'dad'),
(58, 'adas'),
(59, 'sadas'),
(60, 'dasdsa'),
(61, 'paginas'),
(62, 'programaÃ§Ã£o'),
(63, 'lÃ³gica'),
(64, 'linguagens'),
(65, 'banco'),
(66, 'dados'),
(67, 'mysql'),
(68, 'android'),
(69, 'app'),
(70, 'aplicativos'),
(71, 'mobile'),
(72, 'python'),
(73, 'javascript'),
(74, 'linguagem'),
(75, 'php'),
(76, 'programacao'),
(77, 'orientado'),
(78, 'objeto'),
(79, 'estilo'),
(80, 'design'),
(81, 'sistemas'),
(82, 'internet'),
(83, 'dedao'),
(84, 'planilhas'),
(85, 'framework'),
(86, 'jogos'),
(87, 'jogar'),
(88, 'jogo'),
(89, 'teste'),
(90, ' sadsad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Indexes for table `aluno_aula_rel`
--
ALTER TABLE `aluno_aula_rel`
  ADD PRIMARY KEY (`id_rel`);

--
-- Indexes for table `aluno_curso_rel`
--
ALTER TABLE `aluno_curso_rel`
  ADD PRIMARY KEY (`id_rel`);

--
-- Indexes for table `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`id_aula`);

--
-- Indexes for table `aulas_video_url`
--
ALTER TABLE `aulas_video_url`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cursos_tag_ref`
--
ALTER TABLE `cursos_tag_ref`
  ADD PRIMARY KEY (`id_ref`);

--
-- Indexes for table `instrutor`
--
ALTER TABLE `instrutor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labaula_conteudo1`
--
ALTER TABLE `labaula_conteudo1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_aula` (`id_aula`);

--
-- Indexes for table `labaula_conteudo2`
--
ALTER TABLE `labaula_conteudo2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_aula` (`id_aula`);

--
-- Indexes for table `labcourses`
--
ALTER TABLE `labcourses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_aula`
--
ALTER TABLE `lab_aula`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id_sala`);

--
-- Indexes for table `sala_entrada`
--
ALTER TABLE `sala_entrada`
  ADD PRIMARY KEY (`id_entrada`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id_tag`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `aluno_aula_rel`
--
ALTER TABLE `aluno_aula_rel`
  MODIFY `id_rel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `aluno_curso_rel`
--
ALTER TABLE `aluno_curso_rel`
  MODIFY `id_rel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `aulas`
--
ALTER TABLE `aulas`
  MODIFY `id_aula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `aulas_video_url`
--
ALTER TABLE `aulas_video_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `cursos_tag_ref`
--
ALTER TABLE `cursos_tag_ref`
  MODIFY `id_ref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `instrutor`
--
ALTER TABLE `instrutor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `labaula_conteudo1`
--
ALTER TABLE `labaula_conteudo1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `labaula_conteudo2`
--
ALTER TABLE `labaula_conteudo2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `labcourses`
--
ALTER TABLE `labcourses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lab_aula`
--
ALTER TABLE `lab_aula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sala`
--
ALTER TABLE `sala`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sala_entrada`
--
ALTER TABLE `sala_entrada`
  MODIFY `id_entrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `labaula_conteudo1`
--
ALTER TABLE `labaula_conteudo1`
  ADD CONSTRAINT `labaula_conteudo1_ibfk_1` FOREIGN KEY (`id_aula`) REFERENCES `lab_aula` (`id`);

--
-- Limitadores para a tabela `labaula_conteudo2`
--
ALTER TABLE `labaula_conteudo2`
  ADD CONSTRAINT `labaula_conteudo2_ibfk_1` FOREIGN KEY (`id_aula`) REFERENCES `lab_aula` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
