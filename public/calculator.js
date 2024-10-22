let previousDisplayed = null;
let previousSelected = null;

const DisplayCal = (imgID, calcID) => {
    const imageElement = document.getElementById(imgID);
    const calcElement = document.getElementById(calcID);

    imageElement.addEventListener('click', () => {

        document.getElementById('LogoIMG').style.display='none';
        
        if (previousSelected && previousSelected !== imageElement) {
            previousSelected.style.backgroundColor = 'white';
        }

        imageElement.style.backgroundColor = 'yellow';
        previousSelected = imageElement;

        if (previousDisplayed && previousDisplayed !== calcElement) {
            previousDisplayed.style.display = "none";
        }

        calcElement.style.display = "flex";
        previousDisplayed = calcElement; // Update the previously displayed calculator
    });
};

DisplayCal('temperature', 'temperaturebox');
DisplayCal('length', 'lengthbox');
DisplayCal('num', 'numbox');
DisplayCal('currency', 'currencybox');
DisplayCal('homeCalc', 'homebox');
DisplayCal('time', 'timebox');
DisplayCal('network', 'networkbox');










let userId;

window.onload = () => {
    const params = new URLSearchParams(window.location.search);
    userId = params.get('userId');
    if (userId) {
        sessionStorage.setItem('user', userId);
    }
};

function Back() {
    if (userId) {
        location.href = `LoggedIN.html?userId=${userId}`;
    } else {
        location.href = 'index.html';
    }
}