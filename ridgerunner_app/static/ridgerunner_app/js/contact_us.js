const errorMessages = {
    'email': gettext('Please use the following format: example@domain.com'),
    'tel': gettext('Please use the following format: +XXXXXXXXXXXXXXX'),
},
inputElements = [...document.getElementsByTagName('input')],
message = document.getElementById('message');
inputElements.push(message);
let send = null,
recaptcha = true;

window.recaptchaCallback = recaptchaCallback;
function recaptchaCallback() {
    recaptcha = false;
    handleSend();
}

function handleSend() {
    let disabled = recaptcha;
    for (let inputElement of inputElements) if (inputElement.ariaInvalid === 'true') {
        disabled = true;
        break;
    }
    if (send !== null) send.disabled = disabled;
}

for (let inputElement of inputElements) {
    if (inputElement.id === 'send') send = inputElement;
    else {
        inputElement.addEventListener('input', () => {
            const validity = inputElement.validity,
            errorMessage = document.getElementById(inputElement.id + '_error_message');
            let innerHTML = null;
            if (validity.patternMismatch) innerHTML = errorMessages[inputElement.id];
            if (innerHTML === null) {
                inputElement.ariaInvalid = 'false';
                errorMessage.style.display = 'none';
                errorMessage.innerHTML = null;
            } else {
                inputElement.ariaInvalid = 'true';
                errorMessage.style.display = 'block';
                errorMessage.innerHTML = innerHTML;
            }

            handleSend();
        });
    }
}
