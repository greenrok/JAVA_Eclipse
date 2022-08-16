function registEvent() {
	const handler = function(event) {
		if (event.target.checked) {
			alert('now check');
		} else {
			alert('now uncheck');
		}
	}
	const boxes = document.getElementsByName("tools");
	for (let i=0; i<boxes.length; i++) {
		boxes[i].addEventListener('click', handler);
	}
}

function checkCheckbox() {
	
}