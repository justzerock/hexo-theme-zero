<div class='blur'></div>
<div class='settings'>
  <div class='settings__block'>
    <div class='settings__btn light' id='btn-light' aria-label='切换亮色'>
      <i class='if i-sun'></i>
    </div>
    <div class='settings__btn dark' id='btn-dark' aria-label='切换暗色'>
      <i class='if i-moon'></i>
    </div>
    <div class='settings__btn auto' id='btn-auto' aria-label='跟随系统'>
      <i class='if i-auto'></i>
    </div>
  </div>
  <div class='settings__btn toggle' id='color-mode-toggle' aria-label='颜色模式'>
    <i class='if i-auto'></i>
  </div>
  <div class='settings__btn' id='search' aria-label='搜索'>
    <i class='if i-search'></i>
  </div>
  <div class='settings__btn gotop' id='go-top' aria-label='滚动到顶部'>
    <i class='if i-arrow-up'></i>
  </div>
  {#<div class='settings__btn disable' id='comment-toggle' aria-label='开启评论'>
    <i class='if i-comment'></i>
  </div>#}
</div>

<script>

let commentToggle = document.getElementById('comment-toggle')
let colorModeToggle = document.getElementById('color-mode-toggle')
let blur = document.getElementsByClassName('blur')[0]
let settings = document.getElementsByClassName('settings')[0]

getIscolorMode = function () {
  let colorMode = localStorage.getItem('color-mode') || 'auto'
  colorModeToggle.innerHTML = `<i class='if i-${colorMode}'></i>`
}

colorModeToggle.onclick = function () {
  if (settings.className.indexOf('open') > -1) {
    settings.classList.remove('open')
    blur.classList.remove('open')
  } else {
    settings.classList.add('open')
    blur.classList.add('open')
  }
}

blur.onclick = function () {
  settings.classList.remove('open')
  blur.classList.remove('open')
}


getIsComment = function() {
  let isComment = localStorage.getItem('isComment')
  if ( isComment == 'true' ) {
    commentToggle.classList.remove('disable')
    commentToggle.ariaLabel = '关闭评论'
  } else {
    commentToggle.classList.add('disable')
    commentToggle.ariaLabel = '开启评论'
  }
}

/* commentToggle.onclick = function() {
  let lenBlock = document.querySelectorAll('#comment-beaudar').length
  let isComment = localStorage.getItem('isComment')
  if ( isComment == 'true' ) {
    localStorage.setItem('isComment', false)
    commentToggle.className = 'settings__btn disable'
    if (lenBlock) {
      let block = document.getElementById('comment-beaudar')
      block.innerHTML = ''
    }
  } else {
    localStorage.setItem('isComment', true)
    commentToggle.className = 'settings__btn'
    if (lenBlock) {
      load_beaudar()
    }
  }
} */

document.addEventListener("DOMContentLoaded", (event) => {
  // getIsComment()
  getIscolorMode()
})

document.addEventListener('pjax:complete', function (){
  // getIsComment()
  getIscolorMode()
})

</script>
