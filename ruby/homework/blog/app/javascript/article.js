console.log("article.js is loaded");

$("document").ready(function(){
    console.log("jquery is working!");

    $("#toggle-button").click(function(){
        $("#article-content").toggle();
    })
});

$(function(){
    // alert('jQuery is working!');

    // form validation for comment body
    $('#comment-body').on('input', function(){
        console.log('Input event fired');
        const value = $(this).val().trim();
        const submitButton = $(this).closest('form').find(':submit');

        if (value === ''){
            $(this).css('border-color', 'red');
            submitButton.prop('disabled', true);
        } else {
            $(this).css('border-color', '');
            submitButton.prop('disabled', false);
        }
    });
    
    // Dynamic content loading for comments
    $('#load-comments').on('click', function() {
        //const categoryId = $('#category-id').data('category');
        const articleId = $('#load-comments').data('article');

        const url = `/articles/${articleId}/comments`;
        console.log($.getJSON(url));
        $.getJSON(url, function(data){
            console.log(data);
            // Append the new comments to the container #comments
            $('#comments').append()
        })
            // add .fail callback to handle error messaging
            .fail(function() {
                console.error("Failed to load new comments.")
            });
        });
});


// document.addEventListener("DOMContentLoaded", () => {

//     const toggleButton = document.getElementById("toggle-button");
//     const content = document.getElementById("article-content");

//     toggleButton.addEventListener("click", () => {
//         if(content.style.display === "none"){
//             content.style.display = "block";
//             toggleButton.textContent = "Hide Content";
//         } else {
//             content.style.display = "none";
//             toggleButton.textContent = "Show Content";
//         }
//     });
// });


