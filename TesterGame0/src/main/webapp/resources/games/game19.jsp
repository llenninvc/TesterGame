<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
body, html, #app {
  margin: 0;
  width: 100%;
  height: 100%;
}

#app {
  overflow: hidden;
  touch-action: pan-up;
  color: #ffffff;
  font-family: 'Montserrat', sans-serif;
  text-align: center;
  text-shadow: 0 0 5px #000000, 0 0 20px #000;
  user-select: none;
}

#app h1 {
  --fontSize: 50px;
  --lineHeight: 70px;
  width: auto;
  height: calc(2 * var--lineHeight);
  line-height: var(--lineHeight);
  margin: calc(50vh - var--lineHeight) auto 0;
  font-size: var(--fontSize);
}

#app a {
  margin-top: 10px;
  display: inline-block;
  text-decoration: none;
  color: #fff;
}

#app canvas {
  display: block;
  position: fixed;
  z-index: -1;
  top: 0;
}

        </style>
    <body>
<div id="app">
  <div id="hero">

  <a target="_blank" href="https://github.com/klevron/threejs-toys">
    </a>
  </div>
</div>

    <script>
import { swarmBackground } from 'https://unpkg.com/threejs-toys@0.0.8/build/threejs-toys.module.cdn.min.js'

const bg = swarmBackground({
  el: document.getElementById('app'),
  eventsEl: document.body,
  gpgpuSize: 256,
    color: [Math.random() * 0xffffff, Math.random() * 0xffffff],
  geometry: 'default'
});

bg.three.camera.position.set(0, 0, 200);

document.body.addEventListener('click', () => {
  bg.setColors([Math.random() * 0xffffff, Math.random() * 0xffffff]);
});

    </script>
    </body>
</html>
