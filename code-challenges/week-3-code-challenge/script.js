// $(function () {
//     // add click function & logic for AJAX request here
//     // do not forget to hide API key
//     var movies = {
//         title: $("#title").val(),
//         genre: $("#genre").val(),
//         year: $("#year").val()
//     }

//     //local storage
//     if(localStorage.movies){  
//         movies = JSON.parse(localStorage.movies);
//     }else{
//         movies = [];
//     }

//     function saveMovie(){
//         event.preventDefault();
//         var movieList = $("#movie-form").serializeArray();
//         var movie = movieList[0].value;
//         $("#movie-list").append("<li>" + movie + "</li>");

//         movies.push(movie);
//         localStorage.movies = JSON.stringify(movies);
//     }
//      //var URL = 'http://img.omdbapi.com/?apikey=' + apiKey + '&t=' + title;
// });