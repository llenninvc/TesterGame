<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

     
        <style>
            body {
  background: #111;
  font-family: "Lato", "Lucida Grande","Lucida Sans Unicode", Tahoma, Sans-Serif;
  user-select: none;
  min-width: 420px;
}
p {
  color: white;
  text-align: center;
}
button {
  background: none;
  margin: 0 0.3em;
  border: 0;
  padding: 0;
  font-size: 4em;
  cursor: pointer;
}
#click {
  color: white;
  cursor: pointer;
  border: 2px solid white;
  width: 260px;
  text-align: center;
  padding: 5px 25px;
  font-size: 1.8em;
}
#click:hover {
  background: rgba(255,255,255,0.1);
}
#game {
  width: 320px; height: 240px;
  position: relative;
  margin: 45px auto 40px;  
  perspective: 100px;
  transform: scale(1.3);
  overflow: hidden;
}
#game > * {
  position: absolute;   
  width: 100%;
}
#sky {
  height: 66px;
  background: #228;
}
#mountains {
  width: 960px; height: 0;
  top: 65px; left: -320px;
}
.mountain { 
  float: left;
  width: 5px;
  position: relative; top: -16px;
  border: 40px solid transparent;
  border-bottom: 10px solid #882;
  border-top: 0;
  margin-right: 280px;
}
.mountain:after {
  content: "";
  float: left;
  width: 5px;
  position: relative; top: 10px;
  border: 25px solid transparent;
  border-bottom: 6px solid #882;
  border-top: 0;
}
.mountain:nth-child(2) {
  transform: scaleX (1);
  margin-right: 80px;
}
.mountain:nth-child(3) {
  margin-right: 240px;
}
.mountain:nth-child(3):after {
  left: 20px;
}
.mountain:last-child {  
  margin-right: 0;
}
#terrain {
  top: 65px;
  height: 120px;
  background: #040;
}
#fog {
  width: 200%; height: 80px;
  top: 0; left: -50%;
  background: rgba(200,200,200,0.7);
  box-shadow: 0 45px 45px rgba(200,200,200,0.7);
}
#road {
  width: 320px; height: 120px;
  top: 65px;
}
#cars {
  width: 320px; height: 1200px;
  bottom: 55px;
  transform-origin: 50% 100%;
  transform: rotateX(56deg);
  transform-style: preserve-3d;
}
#cars.night .car {
  background: #111;
  filter: none !important;
}
.car {
  position: absolute;
  left: 0; bottom: 0;
  width: 45px;
  height: 15px;
  background-image: url('data:image/png;base64,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');
  background-size: 100% 100%;
  image-rendering: pixelated;
}
.night .car:before {
  width: 8px; height: 3px;
  content: "";
  display: block;
  background: tomato;
  position: absolute; top: 7px; left: 8px;
}
.night .car:after {
  width: 8px; height: 3px;
  content: "";
  display: block;
  background: tomato;
  position: absolute; top: 7px; left: 29px;
}
#car.player {
  width: 45px;
  left: calc(50% - 20px);
  bottom: 55px;
  filter:  grayscale(1) brightness(5);
}
#ui {
  top: 185px;
  padding: 5px;
  background: #000;
  width: calc(100% - 10px)
}
#panel {
  width: 120px;
  height: 35px;
  margin: 0 auto;
  background: #922;
  padding: 5px 20px;
  font-family: monospace;
  font-size: 13px;
  font-weight: bold;
}
#panel div {
  float: left;
  background: #c95;
  height: 15px;  
  color: #000;
  overflow: hidden;
}
#panel a {
  position: relative;
  padding: 0 2.5px;
  float: left;
  width: 10px; height: 15px;
  text-align: center;
  transform: scaleX(1.4);
  transform-origin: 0 0;
  margin-right: 5px;
}
#km {
  width: 120px;
  margin-bottom: 5px;  
}

#km a:last-child {
  background: #000;
  color: #c95;
}
#lap {
  width: 20px;
  margin-right: 20px;
}
#position {
  width: 80px;
}
#position a:first-child {
  float: left;
}
.hidden {
  display: none;
}
        </style>
            
        
        
    </head>
       
    <body>
<div id="game">
  <div id="sky"></div>
  <div id="mountains">
    <div class="mountain"></div>
    <div class="mountain"></div>
    <div class="mountain"></div>
    <div class="mountain"></div>
  </div>
  <div id="terrain"></div>
  <div id="fog" class="hidden"></div>
  <canvas id="road"></canvas>
  <div id="cars"></div>
  <div id="car" class="player car"></div>
  <div id="ui">
    <div id="panel">
      <div id="km"><a></a><a>0</a><a>0</a><a>0</a><a>0</a><a>0</a></div>
      <div id="lap"><a>1</a></div>
      <div id="position"><a>P</a><a>2</a><a>0</a><a>0</a></div>
    </div>
  </div>
</div>
<p>
  <button id="left">◀️</button>
  <button id="up">⏏️</button>
  <button id="right">▶️</button>
</p>
<p><button id="click">Click to start!</button></p>
<p>Left/Right Arrows or A/D to steer and<br> 
  Up Arrow, W or Space to accelerate
</p> 



<script>
//CARS
var car = document.getElementById('car');
car.init = function () { 
  car.speed = 0.2;
  car.turn = 0;
  car.x = car.offsetLeft;
  car.y = 0;
  car.width = car.offsetWidth;
  car.height = car.offsetHeight;
  car.maxSpeed = 5.;
  car.km = 0;
  car.motor = 1;  
  car.crashed = false;
  car.acc = 0.025,
  car.break = 0.02;
};
car.frame = function () {
  car.motor *= -1;
  car.style.left = parseInt(car.x) + 'px';
  car.style.transform = 'scaleX('+car.motor+')';
  car.steer();
};
car.steer = function () {
  car.x += car.sx;
  road.P0.x -= car.sx/4;
};
car.crash = function (d) {
  if (!car.crashed) {
    car.crashed = true;
    car.speed = 0.2;
    car.sx = d ? d : 0;
    game.audio.oscillator.frequency.value = 15;
    setTimeout(function () {
      game.audio.oscillator.frequency.value = 60;
      car.crashed = false;
      car.sx = 0;
    }, 800);
  }
};
var cars = document.getElementById('cars');
cars.init = function () {
  cars.n = 32;
  cars.x = 0;
  cars.speed = 1;  
  cars.interval = 500;
  cars.oponents = [];
  cars.easy = 0.2;
  for (var j=0; j<cars.n; j++) {
    cars.oponents[j] = [];
    for (var i=0; i<3; i++) {
      cars.oponents[j][i] = cars.create(i,j); 
    }
  }
  car.st = document.createElement('style');
  document.body.appendChild(car.st);
  cars.builded = true;
};
cars.frame = function () {
  var relative = cars.speed - car.speed;
  for (var j=0; j<cars.n; j++) {
    for (var i=0; i<3; i++) { 
      var c = cars.oponents[j][i];   
      var d = road.width * 0.42, 
        w = road.width - d - car.width; 
      c.x = (road.P0.x - road.height - 40) * (c.y * c.y * 0.00001) + 
            (d/2) + (i * (w/2)); 
      c.y += relative;
      var h = cars.n * car.height * 3;
      if (!c.classList.contains('hidden') && 
          c.y < car.height - 5 && c.y > 0) {
        //collision
        if (car.x < 115 && i === 0) car.crash(0.1);
        if (car.x > 100 && car.x < 175 && i === 1) car.crash();
        if (car.x > 165 && i === 2) car.crash(-0.1);
      }
      if (c.y > h) {
        // back to bottom
        cars.color(c);  
        c.classList.remove('hidden');
        if (car.x < 115 && i === 0) c.classList.add('hidden');
        if (car.x > 100 && car.x < 175 && i === 1) c.classList.add('hidden');
        if (car.x > 165 && i === 2) c.classList.add('hidden');
        if (Math.random() > cars.easy) c.classList.add('hidden');
        if (!c.classList.contains('hidden')) car.position++;
        c.y = 0;
      } else if (c.y < 0)  {
        //passing
        if (!c.classList.contains('hidden')) {
          car.position--;
        } 
        cars.color(c);
        c.classList.remove('hidden');
        if (Math.random() > cars.easy) c.classList.add('hidden');
        c.y = h;
        cars.color(c);
      }
      c.style.left = parseInt(c.x) + 'px';
      c.style.bottom = parseInt(c.y) + 'px';
      var o = 1 / (c.y * fog.value);
      c.style.opacity = Math.min(o, 1);
    }
    if (!cars.oponents[j][0].classList.contains('hidden') &&
        !cars.oponents[j][1].classList.contains('hidden') &&
        !cars.oponents[j][2].classList.contains('hidden')) {
      cars.oponents[j][parseInt(Math.random() * 3)].classList.add('hidden');
    }
  }
  car.st.innerHTML = '#cars .car {transform: rotateX(-56deg) scaleX('+car.motor+') }';
  car.style.left = parseInt(car.x) + 'px';
};
cars.create = function (i,j) {  
  var c = document.createElement('div');
  c.className = 'car';
  cars.color(c);
  var d = road.width * 0.42, 
      w = road.width - d - car.width; 
  c.x = (d/2) + (i * (w/2)); 
  c.y = -car.height + (j * car.height*3); 
  cars.appendChild(c);   
  if (Math.random() > 0.1) c.classList.add('hidden');
  if (i === 1 && j === 0 || i === 1 && j === 1) c.classList.add('hidden');
  return c;
};
cars.color = function (c) {
  var randomColor = Math.random()*360;
  var randomLight = 2.5 + (Math.random() * 2);
  c.style['filter'] = 'hue-rotate('+randomColor+'deg) brightness('+randomLight+')';
};
//ROAD
var road = document.getElementById('road');
road.init = function() {
  road.ctx = road.getContext('2d');
  road.width = road.offsetWidth; 
  road.height = road.offsetHeight;
  road.state = 0;
  road.x = 0;
  road.offset = 40;
  road.lineWidth = 2.5;
  road.lineColor = 'rgba(255,255,255,0.7)';
  road.lineDashOffset = 0;
  road.P0 =  {x: parseInt(road.width/2), y: 0, xs: 0};
  road.P1 =  {x: road.offset, y: road.height};
  road.P2 =  {x: road.width - road.offset, y: road.height};
  road.Pc =  {x1: road.P1.x + 86, x2: road.P2.x - 86};
  road.frame();
};
road.frame = function () {
  road.P0.x  += road.P0.xs/2;
  road.Pc.x1 -= road.P0.xs/3;
  road.Pc.x2 -= road.P0.xs/3; 
  road.lineDashOffset -= car.speed;
  
  road.ctx.clearRect(0, 0, road.width, road.height);
  road.ctx.beginPath();

  road.ctx.moveTo(       road.P1.x,  road.P1.y);
  road.ctx.bezierCurveTo(road.Pc.x1, road.P1.y - (road.height*0.7),
                         road.P0.x,  road.P0.y,
                         road.P0.x,  road.P0.y);

  road.ctx.moveTo(       road.P2.x,  road.P2.y);
  road.ctx.bezierCurveTo(road.Pc.x2, road.P2.y - (road.height*0.7),
                         road.P0.x,  road.P0.y,
                         road.P0.x,  road.P0.y);

  road.ctx.strokeStyle = road.lineColor;
  road.ctx.lineWidth = road.lineWidth;
  road.ctx.setLineDash([road.lineWidth, road.lineWidth]);
  road.ctx.lineDashOffset = road.lineDashOffset * -0.5;
  road.ctx.stroke();
};
road.curve = function (side) {
  if (!(road.state === -1 && side === 'left') &&
      !(road.state === 1 && side === 'right')) {
    if (road.state === 1 && side === 'left') road.state = 0;
    else if (road.state === -1 && side === 'right') road.state = 0;  
    else if (road.state === 0 && side === 'left') road.state = -1;
    else if (road.state === 0 && side === 'right') road.state = 1;
    road.P0.xs = 1.5 * ((side === 'left') ? -1 : 1);
  }
  road.randomCurve();
  setTimeout(function () {
    road.P0.xs = 0;
  }, 1000);
};
road.randomCurve = function () {
  game.curveCount = setTimeout(function () {
    road.curve(Math.random()>0.5 ? 'left' : 'right');
  }, 2000); 
};
//MOUNTAINS
var mountains = document.getElementById('mountains');
mountains.frame = function () {
  var curve = (road.P0.x - road.width/2)/100; 
  var left = mountains.offsetLeft;
  if (left < -4.5 * road.width) left =  1.5 * road.width;
  if (left >  1.5 * road.width) left = -4.5 * road.width;
  var d = curve + ((car.speed)*curve*0.5);
  mountains.style.left = parseInt(left - d) + 'px';
};
//UI
var km = document.getElementById('km');
km.frame = function () {
  car.km += (car.speed/1000);
  var value = parseInt(car.km * 10).toString();
  while (value.length < km.childNodes.length) value = '0' + value;
  for (var i=1; i < km.childNodes.length; i++) {
    var a = km.childNodes[i];
    a.innerText = value[i-1];
  }
};
var position = document.getElementById('position');
position.init = function () {
  cars.total = 200;
  car.position = cars.total;
};
position.frame = function () {   
  var value = parseInt(car.position).toString();
  for (var i=0; i < position.childNodes.length-1; i++) {
    var a = position.childNodes[i+1];
    a.innerText = value[i];
  }
};
//LAP 
var lap = document.getElementById('lap');
lap.init = function () {
  lap.value = 1;
},
lap.frame = function () {  
  if (car.position <= 0) {
    lap.value++;
    car.easy += 0.5;
    car.position = 200;
  }
  if (lap.value > 9) alert("GAME OVER\n YOU WIN!!!");
  lap.innerText = lap.value;
};
//FRAME
var frame = function () {
  if (!frame.stop) {
    key.frame();
    car.frame();
    cars.frame();
    mountains.frame();
    road.frame();
    km.frame();
    position.frame();
    requestAnimationFrame(frame);
  }
};
//KEYBOARD
var key = {
  pressed: [],
  frame: function () { 
    if (!car.crashed) {
      car.sx = 0;
      if (car.x > road.width * 0.15){
        if (key.pressed['left'] ||
            key.pressed[37] || // Key: Left arrow
            key.pressed[65]) { // Key: 'A'
          car.sx = -2.5;
        }
      } else car.crash(0.2);
      if (car.x < (road.width * 0.85) - car.width){
        if (key.pressed['right'] ||
            key.pressed[39] || // Key: Right arrow
            key.pressed[68]) { // Key: 'D'
          car.sx = 2.5;
        }
      } else car.crash(-0.2);
      if (key.pressed['up'] ||
          key.pressed[32] || // Key: Space
          key.pressed[38] || // Key: Up arrow
          key.pressed[87]) { // Key: 'W'
        if (car.speed < car.maxSpeed) { 
          car.speed += car.acc;
          game.audio.oscillator.frequency.value += car.acc * 10;
        }
      } else {
        if (car.speed > 0.2) {
          car.speed -= car.break;
          game.audio.oscillator.frequency.value -= car.break * 10;
        }
      }
    }
  }
};
window.addEventListener('keydown', function (event) { 
  key.pressed[event.keyCode] = true;
});
window.addEventListener('keyup', function (event) {
  key.pressed[event.keyCode] = false;
});
//GAME
var game = document.getElementById('game');
game.init = function () {
  game.time = 0;
  car.init();
  cars.init();
  road.init();
  position.init();
  lap.init();
  fog.init();
  cars.frame();
};
// BUTTONS
var buttons = ['left', 'up', 'right'];
buttons.forEach(function (id) {
  var button = document.getElementById(id);
  var press = function (event) { 
    key.pressed[id] = true;
  };
  var release = function (event) {
    key.pressed[id] = false;
  };
  button.addEventListener('mousedown', press);
  button.addEventListener('mouseup', release);
  button.addEventListener('touchstart', press);
  button.addEventListener('touchend', release);
});
var clickstart = document.getElementById('click').clickstart.addEventListener('click', function () {
  if (!game.started) {
    clickstart.innerText = 'Click to Pause';
    game.time = 0;
    game.started = true;
    frame.stop = false;
    if (!cars.builded) cars.init();
    game.audio();
    game.curveCount = setTimeout(road.randomCurve, 5000);
    game.timeCount = setTimeout(game.changeTime, 30000);
    frame();
  } else {
    clickstart.innerText = 'Click to Start!';
    game.started = false;
    frame.stop = true;
    clearTimeout(game.curveCount);
    clearTimeout(game.timeCount);
    game.audio.oscillator.stop();
  }
});
//AUDIO
game.audio = function () {
  if (game.audio.oscillator) {
    game.audio.oscillator.stop(game.audio.context.currentTime);
    game.audio.oscillator.disconnect(game.audio.volume);
    delete game.audio.oscillator;
  }
  game.audio.context = new AudioContext();
  game.audio.volume = game.audio.context.createGain();
  game.audio.volume.gain.value = 0.1;
  game.audio.volume.connect(game.audio.context.destination);  
  var o = game.audio.context.createOscillator();
  o.frequency.value = 0;
  o.detune.value = 0;
  o.type = 'sawtooth';
  o.connect(game.audio.volume);
  o.frequency.value = 60;
  game.audio.oscillator = o;
  game.audio.oscillator.start(0);
};
//COLORS
game.colors = [
  //sky //terrain //mountains
  ['#228', '#040', 1], //day
  ['#93c', '#440', 0.5], //afternoon 
  ['#546', '#111', 0.2], //night
  ['#888', '#aaa', 0.2], //fog
  ['#545', '#111', 0.2], //night
  ['#529', '#230', 0.3], //morning
  ['#aaf', '#eee', 0.2] //snow
];
var sky = document.getElementById('sky');
var terrain = document.getElementById('terrain');
game.changeTime = function () {
  if (!frame.stop) {
    game.time++;
    if (game.time >= game.colors.length) game.time = 0;
    sky.style.background = game.colors[game.time][0];
    terrain.style.background = game.colors[game.time][1];
    mountains.style.opacity = game.colors[game.time][2];
    if (game.time === 3 || game.time === 4) fog.toggle();
    if (game.time === 2 || game.time === 4) {
      cars.classList.add('night');
    } else {
      cars.classList.remove('night');
    }
    game.timeCount = setTimeout(game.changeTime, 30000);
  }
};
//FOG
var fog = document.getElementById('fog');
fog.init = function () {
  fog.value = 0.02;
  fog.status = false;  
};
fog.toggle = function () {
  fog.classList.toggle('hidden');  
  fog.status = !fog.status;
  fog.value = fog.status ? 0.1 : 0.02;  
};
//INIT
game.init();
    </script>
    

</body>
</html>