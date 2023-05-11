<div class="menu">
  {% if theme.custom_file_path.avatar %}
    {{- zexo_inject('avatar') }}
  {% else %}
    {% include './avatar.swig' %}
  {% endif %}
  <div class='menu__block'>
    {% for key in theme.menu %}
      <a data-index="{{ key.index }}" href="{{ key.link }}" key="{{ key.name }}" class="menu__item {% if is_current(key.link) || is_home() && key.name=='首页' %}menu__item--current{% endif %}">
        {#<span class="menu__icon">
          <i class="if {{ key.icon }}"></i>
        </span>#}
        <span class="menu__name">
          {{ key.name }}
        </span>
      </a>
    {% endfor %}
    <div class="menu__back">
    </div>
    <div class="menu__indicator"></div>
  </div>
</div>

<script>

load_menu = function () {
  let items = document.querySelectorAll('a.menu__item')
  items.forEach( el => {
    el.addEventListener("click", it => {set_current(it)}, false)
  })

  let cur = document.querySelectorAll('a.menu__item--current')
  if (cur.length == 0) {
    items[0].classList.add('menu__item--current')
    items[0].nextElementSibling.classList.add('noline')
  } else {
    cur[0].nextElementSibling.classList.add('noline')
  }
}

set_current = function (it) {
  document.querySelectorAll('a.menu__item').forEach( item => {
    item.className = 'menu__item'
    if (item.contains(it.target)) {
      item.classList.add('menu__item--current')
      item.nextElementSibling.classList.add('noline')
    }
  })
  let tag = it.target.tagName
  if (tag == 'A') {
    it.target.classList.add('menu__item--current')
    it.target.nextElementSibling.classList.add('noline')
  }
}

document.addEventListener("DOMContentLoaded", (event) => {
  load_menu()
})

document.addEventListener('pjax:complete', function (){
  load_menu()
})

</script>