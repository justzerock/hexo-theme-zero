<script>

load_fancybox = function () {

  let boxLength = document.querySelectorAll('.post__article .fancybox__link').length
  
  if (!boxLength) {
    document.querySelectorAll('.post__article img').forEach( el => {
      let imgWrapLink = document.createElement('a')
      let imgLink = el.getAttribute('src')
      imgWrapLink.setAttribute('class', 'fancybox__link')
      imgWrapLink.setAttribute('href', imgLink)
      imgWrapLink.setAttribute('data-fancybox', 'images')

      el.setAttribute('class', 'fancybox__img')
      el.parentNode.replaceChild(imgWrapLink, el)
      imgWrapLink.appendChild(el)

      let imgTitle = el.getAttribute('title') || el.getAttribute('alt')
      if (imgTitle) {
        let elTitle = document.createElement('p')
        elTitle.setAttribute('class', 'fancybox__title')
        elTitle.innerHTML = imgTitle
        imgWrapLink.append(elTitle)
        imgWrapLink.setAttribute('title', imgTitle)
        imgWrapLink.setAttribute('data-caption', imgTitle)
      }

    })
    
    $().fancybox({
      selector: '[data-fancybox="images"]',
      thumbs: false,
      hash: true,
      loop: true,
      fullScreen: false,
      slideShow: false,
      protect: true,
      //backFocus: true,
      //animationDuration: 255,
      //transitionDuration: 255,
    });
  }

}

document.addEventListener("DOMContentLoaded", (event) => {
  load_fancybox()
});   

document.addEventListener('pjax:complete', function (){
  load_fancybox()
})

</script>