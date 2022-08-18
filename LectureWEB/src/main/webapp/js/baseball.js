function Enter(num) {
  let number = num;
  document.getElementById("getNum").value = num;
}

function setLevel(level) {
  alert("level : " + level);
  let start = document.getElementById("Start");
  start.disabled = false;
}

function start(bool) {
  // start button, stop button
  if (bool) {
    let play = document.getElementById("play");
    play.style.display = "block";
    registEvent();
  } else {
  }
}

function handout() {
  let strike = document.getElementById("strike");
  let ball = document.getElementById("ball");
  let result = strike.innerHTML + "-" + ball.innerHTML;
  console.log(result);

  let tried = document.getElementById("tried");
  tried.innerHTML = tried.innerHTML + "<br>" + result;
  if (count == limit_count) {
    console.log("");
    let btn = document.getElementById("btn_handout");
    btn.disabled = true;
  }

  count = count + 1;
}

function registEvent() {
  alert("이벤트 등록");
  let imgs = document.getElementsByClassName("selectNum");
  for (let i = 0; i < imgs.length; i++) {
    imgs[i].addEventListener("click", function (event) {
      alert(event.target.alt);
    });
  }
}
