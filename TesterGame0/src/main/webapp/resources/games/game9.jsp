<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.contenedor-juego{
    height:100vh;
    max-width: 1250px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap:1rem;
    text-align: center;

}

.juego-titulo, .juego-info{
    text-align: center;
}

.juego-cuadricula{
   
    display: grid;
    grid-template-columns: auto auto auto;
    gap:0;
}

.cuadro{
    width:3rem;
    height: 3rem;
    border: 1px solid rgb(168, 168, 168);
    text-align: center;
    color:rgb(7, 255, 69);
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: black;
    transition: background-color ease-in 0.2s;
}

.cuadro:hover{
   
    background-color:#cccc;
    
}

.juego-boton{
    display:inline-flex;
    padding: 1rem 1rem;
    background:red ;
    color: white;
    cursor: pointer;
    justify-content: center;
    font-weight: bold;
    transition:color ease-out 0.3s;
   
}

.juego-boton:hover{
  
    background:white ;
    color: red;
    border: 1px solid red;
   
}
        </style>
    </head>
    <body>
    <div class="contenedor-juego">
        <div class="juego-titulo"><h2>TRES EN RAYA</h2></div>
        <p id = "juego-info" class="juego-info"></p>
        <div class="juego-cuadricula">

            <div class="cuadro"></div>
            <div class="cuadro"></div>
            <div class="cuadro"></div>
            <div class="cuadro"></div>
            <div class="cuadro"></div>
            <div class="cuadro"></div>
            <div class="cuadro"></div>
            <div class="cuadro"></div>
            <div class="cuadro"></div>

        </div>

        <div id ="juego-boton" class="juego-boton">Volver a jugar</div>
    </div>


    <script src="script.js"></script>
    
    
    <script>
        
const cuadro_btn = document.querySelectorAll(".cuadro");
const info = document.getElementById("juego-info");
const juego_btn = document.getElementById("juego-boton");
var i = 1;
const jBtn_e =  "pointer-events:initial;opacity:initial;",
      jBtn_d =  "pointer-events:none;opacity:40%;";

var pWin = [ [0,1,2],[3,4,5],[6,7,8],
             [0,3,6],[1,4,7],[2,5,8],
             [0,4,8],[2,4,6]
           ];

function comprobar(){
  juego_btn.style.cssText = jBtn_d;
  for (var j = 0; j < pWin.length;j++){
    if(cuadro_btn[pWin[j][0]].innerHTML === "X" && cuadro_btn[pWin[j][1]].innerHTML === "X" && cuadro_btn[pWin[j][2]].innerHTML === "X" ){
      info.innerHTML = '"X" Gana';
      deshabilitarCasillas();
    }else if(cuadro_btn[pWin[j][0]].innerHTML === "O" && cuadro_btn[pWin[j][1]].innerHTML === "O" && cuadro_btn[pWin[j][2]].innerHTML === "O"){
      info.innerHTML = '"O" Gana';
      deshabilitarCasillas();
    }else if(cuadro_btn[0].innerHTML !== "" && cuadro_btn[1].innerHTML !== "" && cuadro_btn[2].innerHTML !== "" && cuadro_btn[3].innerHTML !== "" && cuadro_btn[4].innerHTML !== "" && cuadro_btn[5].innerHTML !== "" && cuadro_btn[6].innerHTML !== "" && cuadro_btn[7].innerHTML !== "" && cuadro_btn[8].innerHTML !== ""){
      info.innerHTML = "Empate";
      deshabilitarCasillas(false);
    }
  }
    
}

function  deshabilitarCasillas(y){
  (y === false)?i = Math.floor(Math.random() * (3 - 1)) + 1:0;
    for(var n_boton = 0; n_boton < cuadro_btn.length; n_boton++){    
      cuadro_btn[n_boton].style.setProperty("pointer-events","none"); 
    } 
  juego_btn.style.cssText = jBtn_e;
}

function nEmpieza(){
  juego_btn.style.cssText = jBtn_d;
  let c1;
  (i % 2 === 0 )?c1= "X":c1= "O"; 
  info.innerHTML = `Presione cualquier cuadro para iniciar: <b>"${c1}"</b> empieza.`;   
}

cuadro_btn.forEach(boton => {
  boton.onclick = function(){
    info.innerHTML = "";
    (i % 2 === 0)?boton.innerHTML = "X": boton.innerHTML = "O";
    comprobar();
    boton.style.setProperty("pointer-events","none"); 
    i++; 
    (i === 3)?i = 1: 0 ;
  };
});

juego_btn.onclick = function(){
  for(var n_boton = 0; n_boton < cuadro_btn.length; n_boton++){    
    cuadro_btn[n_boton].style.cssText = "pointer-events:initial;";
    cuadro_btn[n_boton].innerHTML = "";
  }
  nEmpieza();
};

nEmpieza();

    </script>
    
    
    
    </body>
</html>
