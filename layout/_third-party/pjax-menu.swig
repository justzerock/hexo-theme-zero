<script>

load_menu = function () {
    document.querySelectorAll('.menu a.menu__item').forEach( el => {
      el.addEventListener("click", it => {set_current(it)}, false)
    })

}

set_current = function (it) {
  document.querySelectorAll('.menu a.menu__item').forEach( item => {
    item.className = 'menu__item'
  })
  //it.target.className = 'menu__item menu__item--current'
  it.target.classList.add('menu__item--current')
}

document.addEventListener("DOMContentLoaded", (event) => {
  load_menu()
})

//document.addEventListener('pjax:complete', function (){
//  load_menu()
//})

</script>