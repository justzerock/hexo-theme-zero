<script>

load_menu = function () {
    document.querySelectorAll('.menu a.menu__item').forEach( el => {
      let key = el.getAttribute('key')
      el.className = 'menu__item'
      {% if is_home() && key=='Home' %}
        el.classList.add('menu__item--current')
      {% endif %}

    })

}

document.addEventListener("DOMContentLoaded", (event) => {
  load_menu()
});   

document.addEventListener('pjax:complete', function (){
  load_menu()
})

</script>