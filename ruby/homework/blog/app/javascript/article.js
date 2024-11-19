console.log("article.js is loaded");

document.addEventListener("DOMContentLoaded", () => {

    const toggleButton = document.getElementById("toggle-button");
    const content = document.getElementById("article-content");

    toggleButton.addEventListener("click", () => {
        if(content.style.display === "none"){
            content.style.display = "block";
            toggleButton.textContent = "Hide Content";
        } else {
            content.style.display = "none";
            toggleButton.textContent = "Show Content";
        }
    });
});


// our failed attempt 
// const toggleButton = document.getElementById("toggleButton");

// button.addEventListener("click", function(){
//     var article = document.getElementById("content");

// });
