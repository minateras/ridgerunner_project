document.cookie = 'previousPage=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/ridgerunner_app;';
document.cookie = 'previousPage=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/ridgerunner_app/dogs;';
document.cookie = 'previousPage=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/ridgerunner_app/puppies;';
document.cookie = 'previousPage=news';

let platform = null;

function handleCongratulations() {
    let sidebar = document.getElementsByClassName('sidebar');
    sidebar = sidebar[sidebar.length - 1];
    let button = document.getElementsByClassName('button')[0];

    if (window.innerWidth <= 600 && platform !== 'mobile') {
        console.log('600px or less...');
        platform = 'mobile';
        let numberOfCongratulationsElements = 0;
        for (let child of sidebar.children) {
            if (child.tagName === 'SECTION') {
                numberOfCongratulationsElements++;
                if (numberOfCongratulationsElements > 3) child.style.display = 'none';
            }
        }

        if (button === undefined) {
            button = document.createElement('a');
            button.classList.add('button');
            button.innerHTML = gettext('Click to see all congratulations...');
            button.addEventListener('click', () => {
                for (let child of sidebar.children) if (child.tagName === 'SECTION') child.style.display = 'flex';
                sidebar.removeChild(button);
            });
            sidebar.appendChild(button);
        }
    } else if (window.innerWidth > 600 && platform !== 'desktop') {
        console.log('Greater than 600px...');
        platform = 'desktop';
        for (let child of sidebar.children) if (child.tagName === 'SECTION') child.style.display = 'flex';
        if (button !== undefined) sidebar.removeChild(button);
    }
}

handleCongratulations();
window.addEventListener('resize', () => handleCongratulations());
