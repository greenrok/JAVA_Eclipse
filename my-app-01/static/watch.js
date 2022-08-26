var clock;
function display_now() {
  const root = document.getElementById("root");
  clock = setInterval(() => {
    root.innerHTML = new Date().toLocaleTimeString();
  }, 1000);
}

function controll_time(flag) {
  if (flag) {
    display_now();
  } else {
    clearInterval(clock);
  }
}

//export default clock;    //export를 clock만 해서 function은 못 씀
