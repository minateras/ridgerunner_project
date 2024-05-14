function overflowX(element) {
    if (element.scrollWidth > element.clientWidth) element.style.overflowX = "scroll";
    else element.style.overflowX = "auto";
}



const litters = document.getElementsByClassName("card grid hover");
window.addEventListener("resize", () => {
    for (let litter of litters) overflowX(litter);
});
for (const litter of litters) {
    overflowX(litter);
    litter.addEventListener("click", () => document.location.href = litter.id);
}
