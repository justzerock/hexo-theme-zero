
<div id='comment-beaudar'>
</div>
<style>
  .beaudar {
    transition: all .5s ease-in-out;
    max-height: max-content;
    overflow: hidden;
  }
</style>
<script>

load_beaudar = function () {
  let isComment = localStorage.getItem('isComment')
  if ( isComment == 'true' ) {
    let beaudar = document.createElement('script')
    beaudar.src = 'https://beaudar.lipk.org/client.js'
    beaudar.setAttribute('repo', 'justzerock/justzerock.github.io')
    beaudar.setAttribute('branch', 'blog')
    beaudar.setAttribute('issue-term', 'pathname')
    beaudar.setAttribute('label', 'Beaudar')
    beaudar.setAttribute('theme', 'github-light')
    beaudar.setAttribute('comment-order', 'desc')
    beaudar.setAttribute('input-position', 'top')
    beaudar.setAttribute('crossorigin', 'anonymous')
    beaudar.setAttribute('async','')
    let lenBlock = document.querySelectorAll('#comment-beaudar').length
    if ( lenBlock ) {
      let block = document.getElementById('comment-beaudar')
      if ( block.childElementCount == 0 ) {
        block.appendChild(beaudar)
      }
    }
  }
}

document.addEventListener("DOMContentLoaded", (event) => {
  load_beaudar()
});   

document.addEventListener('pjax:complete', function (){
  load_beaudar()
})

</script>