document.addEventListener("DOMContentLoaded", function(){
  var canvas = document.getElementById('mycanvas');
  var ctx = canvas.getContext('2d');
  ctx.fillStyle = 'red';
  ctx.fillRect(100, 100, 50, 50);
  void ctx.beginPath();
  void ctx.arc(75, 75, 50, 0, 2 * Math.PI);
  ctx.strokeStyle = 'green';
  ctx.lineWidth = 20;
  ctx.fillStyle = 'blue';
  ctx.fill();
  ctx.stroke();


  void ctx.beginPath();
  void ctx.arc(10, 15, 10, 10, 2 * Math.PI);
  void ctx.arc(30, 15, 10, 10, 2 * Math.PI);
  void ctx.arc(50, 15, 10, 10, 2 * Math.PI);
  void ctx.arc(70, 15, 10, 10, 2 * Math.PI);
  void ctx.arc(90, 15, 10, 10, 2 * Math.PI);

  ctx.strokeStyle = 'yellow';
  ctx.lineWidth = 2;

  ctx.stroke();


});
