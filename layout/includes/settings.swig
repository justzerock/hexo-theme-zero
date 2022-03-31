<div class='settings'>
  <div class='settings__btn' id='dark-mode-toggle' title='切换暗色'>
    <i class='if i-sun'></i>
  </div>
  <div class='settings__btn disable' id='comment-toggle' title='开启评论'>
    <i class='if i-comment'></i>
  </div>
</div>

<script>

let commentToggle = document.getElementById('comment-toggle')
let darkModeToggle = document.getElementById('dark-mode-toggle')

getIsDarkMode = function () {
  let darkMode = localStorage.getItem('dark-mode')
  if (darkMode === 'true') {
    darkModeToggle.innerHTML = `<i class='if i-moon'></i>`
  } else {
    darkModeToggle.innerHTML = `<i class='if i-sun'></i>`
  }
}

darkModeToggle.onclick = function () {
  let darkMode = localStorage.getItem('dark-mode')
  if (darkMode === 'true') {
    localStorage.setItem('dark-mode', 'false')
    darkModeToggle.innerHTML = `<i class='if i-sun'></i>`
    darkModeToggle.title = '切换暗色'
  } else {
    localStorage.setItem('dark-mode', 'true')
    darkModeToggle.innerHTML = `<i class='if i-moon'></i>`
    darkModeToggle.title = '切换亮色'
  }
}


getIsComment = function() {
  let isComment = localStorage.getItem('isComment')
  if ( isComment == 'true' ) {
    commentToggle.classList.remove('disable')
    commentToggle.title = '关闭评论'
  } else {
    commentToggle.classList.add('disable')
    commentToggle.title = '开启评论'
  }
}

commentToggle.onclick = function() {
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
}

document.addEventListener("DOMContentLoaded", (event) => {
  getIsComment()
  getIsDarkMode()
})

document.addEventListener('pjax:complete', function (){
  getIsComment()
  getIsDarkMode()
})

</script>
