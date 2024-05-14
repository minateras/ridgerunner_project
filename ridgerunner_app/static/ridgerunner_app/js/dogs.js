document.cookie = "previousPage=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/ridgerunner_app;";
document.cookie = "previousPage=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/ridgerunner_app/dogs;";
document.cookie = "previousPage=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/ridgerunner_app/puppies;";
document.cookie = "previousPage=dogs";

const cardElements = document.getElementsByClassName("card image hover");
for (const cardElement of cardElements) {
    cardElement.addEventListener("click", () => {
        document.location.href = cardElement.id;
    });
}
