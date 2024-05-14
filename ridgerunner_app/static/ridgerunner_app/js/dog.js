function overflowX(element) {
    if (element.scrollWidth > element.clientWidth) element.style.overflowX = "scroll";
    else element.style.overflowX = "auto";
}



const previousPage = document.getElementById('previousPage'),
href = document.cookie.split('previousPage=');
if (href.includes('news')) {
    previousPage.innerHTML = gettext('News').toUpperCase();
    previousPage.href = '../../';
} else if (href.includes('puppies')) {
    previousPage.innerHTML = gettext('Puppies').toUpperCase();
    previousPage.href = '../../puppies';
}

const inspectElements = document.getElementsByClassName('inspect');
for (const inspectElement of inspectElements) {
    const siblings = inspectElement.parentNode.children,
    indexOfDialog = Array.from(siblings).indexOf(inspectElement) + 1,
    dialog = siblings[indexOfDialog];
    inspectElement.onclick = function() {
        dialog.showModal();
        dialog.style.display = 'flex';
        dialog.onclick = function() {
            dialog.close();
            dialog.style.display = 'none';
        };
    };
}

function setTableDisplay(table) {
    if (table.style.display === 'none') {
        table.style.display = 'grid';
        return true;
    }
    table.style.display = 'none';
    return false;
}

const litters = document.getElementsByClassName('card grid hover'),
buttons = document.getElementsByTagName('button');
window.addEventListener('resize', () => {
    for (let litter of litters) overflowX(litter);
});
for (let index = 0; index < litters.length; index++) {
    let litter = litters[index],
    table = litter.children[2],
    button = buttons[index];
    console.log(litter);
    if (litter.id !== '/ridgerunner_app/puppies/') {
        overflowX(litter);
        setTableDisplay(table);
    }
    litter.addEventListener('click', () => {
        if (litter.id === '/ridgerunner_app/puppies/') {
            if (button.innerHTML === gettext("Show the litter's own page")) window.location.href = litter.id;
        } else {
            if (setTableDisplay(table)) {
                if (litter.id.length > 0) {
                    button.innerHTML = gettext("Show the litter's own page");
                } else {
                    button.innerHTML = gettext('Hide detailed view');
                }
            } else {
                button.innerHTML = gettext('Show detailed view');
            }
        }
    });
    button.addEventListener('click', () => {
        if (litter.id.length > 0 && litter.id !== '/ridgerunner_app/puppies/' && button.innerHTML === gettext("Show the litter's own page")) window.location.href = litter.id;
    });
}
