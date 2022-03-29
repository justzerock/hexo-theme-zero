
<div id='comment-beaudar'>
  <div class='vcomment-toggle' title='评论'><i class='if i-comment'></i></div>
</div>
<style>
  .beaudar {
    transition: all .5s ease-in-out;
    max-height: 0;
    overflow: hidden;
  }
</style>
<script>

load_beaudar = function () {
  let block = document.getElementById('comment-beaudar')
  if ( block.childElementCount == 1 ) {
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
    block.appendChild(beaudar)
  }
}

  document.getElementsByClassName('vcomment-toggle')[0].onclick = function () {
    let beaudar = document.getElementsByClassName('beaudar')[0]
    if ( ('','0','0px').includes(beaudar.style.maxHeight) ) {
      beaudar.style.maxHeight = '999px'
      setTimeout(() => {  beaudar.style.maxHeight = 'max-content' }, 500);
    } else {
      beaudar.style.maxHeight = '0px'
    }
  }

document.addEventListener("DOMContentLoaded", (event) => {
  load_beaudar()
});   

document.addEventListener('pjax:complete', function (){
  load_beaudar()
})

</script>