document.cookie = "previousPage=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/ridgerunner_app;";
document.cookie = "previousPage=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/ridgerunner_app/dogs;";
document.cookie = "previousPage=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/ridgerunner_app/puppies;";
document.cookie = "previousPage=news";

function handleCongratulations() {
    const sidebar = document.getElementsByClassName("sidebar")[0];
    let button = document.getElementsByClassName("button")[0];

    if (window.innerWidth <= 600) {
        console.log("600px or less...");
        let numberOfCongratulationsElements = 0;
        for (let child of sidebar.children) {
            if (child.tagName === "SECTION") {
                numberOfCongratulationsElements++;
                if (numberOfCongratulationsElements > 3) child.style.display = "none";
            }
        }

        if (button === undefined) {
            button = document.createElement("a");
            button.classList.add("button");
            button.innerHTML = gettext('Click to see all congratulations...');
            button.addEventListener("click", () => {
                for (let child of sidebar.children) if (child.tagName === "SECTION") child.style.display = "flex";
                sidebar.removeChild(button);
            });
            sidebar.appendChild(button);
        }
    } else {
        console.log("Greater than 600px...");
        for (let child of sidebar.children) if (child.tagName === "SECTION") child.style.display = "flex";
        if (button !== undefined) sidebar.removeChild(button);
    }
}

handleCongratulations();
window.addEventListener("resize", () => handleCongratulations());
