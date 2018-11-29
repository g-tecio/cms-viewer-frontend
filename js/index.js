const app = new Vue({
    el: '#app',
    data: {
        posts: []
    },
    created () {
        //fetch('http://jsonplaceholder.typicode.com/photos')
        //fetch('https://s4w1qbwgu5.execute-api.us-west-1.amazonaws.com/prod/CMS_BETA')
        fetch('https://sjazup8js9.execute-api.us-west-1.amazonaws.com/prod/posts')
        .then(response => response.json())
        .then(json => {
            this.posts = json
        })
    }
})

window.onscroll = function() {myFunction()};

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
