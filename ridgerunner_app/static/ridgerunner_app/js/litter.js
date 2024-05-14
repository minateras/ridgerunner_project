function overflowX(element) {
    if (element.scrollWidth > element.clientWidth) element.style.overflowX = "scroll";
    else element.style.overflowX = "auto";
}



document.cookie = "previousPage=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/ridgerunner_app;";
document.cookie = "previousPage=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/ridgerunner_app/dogs;";
document.cookie = "previousPage=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/ridgerunner_app/puppies;";
document.cookie = "previousPage=puppies";

const table = document.getElementsByClassName("table")[0];
if (table !== undefined) {
    window.addEventListener("resize", () => overflowX(table));
    overflowX(table);
}
