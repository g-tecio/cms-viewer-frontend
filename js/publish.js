const app = new Vue({
    el: '#app',
    data: {
        posts: []
    },
    created () {
        fetch('http://jsonplaceholder.typicode.com/photos')
        .then(response => response.json())
        .then(json => {
            this.posts = json
        })
    }
})