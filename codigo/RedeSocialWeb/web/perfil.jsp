<%-- 
    Document   : Perfil
    Created on : 24/11/2017, 17:36:20
    Author     : Adallberto Lucena Moura
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <title>Perfil</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style type="text/css">            
            #perfil{
                padding-top: 30px;
            }
            .janela{
		background-color: #DAD6D6; 
		width: 1000px; 
		height: 300px;
            }
            .imagem{
		border-width: 2px;
		border-style: solid;
		border-color: #2D5BBE;
		width: 180px; 
		height: 180px;
                border-radius: 100%;
                margin-left: 48px;
                margin-right: 18px;
                margin-top: 90px;
                float: left;
            }
            .central{
		background-color: #DAD6D6;
		width: 470px; 
		height: 300px;
                float: left;
            }
            .direita{
		background-color: #DAD6D6;
		width: 280px; 
		height: 300px;
                float: left;
            }
            h2{
                color: #000000;
                font-family: arial;
                font-weight: bolder;
                padding-top: 230px;
                margin-top: 0px;
                margin-bottom: 0px;
            }
            h5{
                color: #000000;
                font-family: arial;
                margin-top: 0px;
                margin-bottom: 0px;
			}
            .quad_sup_dir{
		background-color: #4575DD;
		border-width: 2px;
		border-style: solid;
		border-color: #2D5BBE;
		margin-top: -30px;
		margin-left: 180px;
                width: 60px; 
		height: 60px;
            }
            .desc_perfil{
		background-color: #DAD6D6;
		border-width: 2px;
		border-style: solid;
		border-color: #2D5BBE;
		width: 240px;
                height: 300px;
            }
            .circulos{
            	background-color: #DAD6D6;
		margin-top: 120px;
		margin-left: 45px;
		width: 180px; 
		height: 50px;
            }
            .imag_circulos{
		border-width: 2px;
		border-style: solid;
		border-color: #2D5BBE;
		width: 30px; 
		height: 30px;
                border-radius: 100%;
                margin-left: 10px;
                margin-right: 10px;
                float: left;				
            }
            .quadro_branco{
		background-color: #FFFFFF;
		width: 180px;
		height: 100px;
		margin-left: 30px;
		margin-top: 20px;
            }
            .desc_perfil h5{
                color: #000000;
                font-family: arial;
                margin-top: 10px;
                margin-bottom: 0px;
                margin-left: 35px;
            }
            .galeria{
		background-color: #A0A0A0;
		border-width: 2px;
		border-style: solid;
		border-color: #2D5BBE;
		margin-top: 30px;
		margin-bottom: 30px;
                width: 240px;
		height: 320px;
            }
            .imag_quadrados{
		border-width: 2px;
		border-style: solid;
		border-color: #2D5BBE;
		width: 50px; 
		height: 50px;
                margin-top: 15px;
                margin-left: 15px;
                margin-right: 10px;
                margin-bottom: 10px;
                float: left;				
            }
            .menu{
		margin-top: 20px;
		width: 700px; 
		height: 40px;
            }
            .link{
		color: #000000;
                font-family: arial;
                margin-top: 0px;
                margin-bottom: 0px;
                margin-left: 5px;
                margin-right: 30px;
            }
        </style>
    </head>
    <body>
        ${mensagem}
        
        ${erro}
        
        <div id="perfil">            
           <div class="janela">
               <img src="imagens/usuario.jpg" alt="Foto de perfil" class="imagem">
               <div class="central">
                   <h2>Nome completo da pessoa</h2>
                   <h5>frase legal da pessoa.</h5>
               </div>
               <div class="direita">
                   <img src="imagens/cor.png" alt="Quadrado1" class="quad_sup_dir">
                   <div class="circulos">
                       <img src="imagens/cor.png" alt="Circulo1" class="imag_circulos">
                       <img src="imagens/cor.png" alt="Circulo2" class="imag_circulos">
                       <img src="imagens/cor.png" alt="Circulo3" class="imag_circulos">
                   </div>
                   <div class="desc_perfil">
                       <div class="quadro_branco"></div>
                       <h5>CEO Conteudo</h5>
                       <h5>Sistemas de Informacao</h5>
                       <h5>em Instituto Federal Goiano</h5>
                       <h5>Mora em Rialma, Goiás, Brasil</h5>
                       <h5>De Brasilia</h5>
                       <h5>Seguido por 1.998 Pessoas</h5>
                   </div>
                   <div class="galeria">
                       <img src="imagens/cor.png" alt="Quadrado1" class="imag_quadrados">
                       <img src="imagens/cor.png" alt="Quadrado2" class="imag_quadrados">
                       <img src="imagens/cor.png" alt="Quadrado3" class="imag_quadrados">
                       <img src="imagens/cor.png" alt="Quadrado4" class="imag_quadrados">
                       <img src="imagens/cor.png" alt="Quadrado5" class="imag_quadrados">
                       <img src="imagens/cor.png" alt="Quadrado6" class="imag_quadrados">
                       <img src="imagens/cor.png" alt="Quadrado7" class="imag_quadrados">
                       <img src="imagens/cor.png" alt="Quadrado8" class="imag_quadrados">
                       <img src="imagens/cor.png" alt="Quadrado9" class="imag_quadrados">
                       <img src="imagens/cor.png" alt="Quadrado10" class="imag_quadrados">
                       <img src="imagens/cor.png" alt="Quadrado11" class="imag_quadrados">
                       <img src="imagens/cor.png" alt="Quadrado12" class="imag_quadrados">
                   </div>
               </div>
           </div>
           <div class="menu">
               <a href="lattes.html" target="subpagina" class="link">LATTES</a>
               <a href="sobre.html" target="subpagina" class="link">SOBRE</a>
               <a href="albuns.html" target="subpagina" class="link">ALBUNS</a>
               <a href="depoimentos.html" target="subpagina" class="link">DEPOIMENTOS</a>
           </div>
       </div>
    </body>
</html>
