<script>

load_zoom = function () {

  let zoomclass = document.getElementsByClassName('img-zoomable').length
  
  if (!zoomclass) {
    let post = document.getElementsByClassName('post__article')
    if (post.length) {
      let imgs = post[0].getElementsByTagName('img')
      for (let i = 0; i < imgs.length; i++) {
        imgs[i].setAttribute("class", 'img-zoomable')
      }
    }
    
    new Zooming({
      // options...
      customSize: '100%'
    }).listen('.img-zoomable')
  }

}

document.addEventListener("DOMContentLoaded", (event) => {
  load_zoom()
});   

document.addEventListener('pjax:complete', function (){
  load_zoom()
})

</script>