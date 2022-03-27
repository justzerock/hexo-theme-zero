<script>

load_lightgallery = function () {

    lightGallery(document.getElementById('lightgallery')); 

}

document.addEventListener("DOMContentLoaded", (event) => {
  load_lightgallery()
});   

document.addEventListener('pjax:complete', function (){
  load_lightgallery()
})

</script>