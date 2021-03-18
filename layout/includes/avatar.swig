<div class="menu__avatar">
  <a class="menu__avatar--link" href="/">
    <img class="menu__avatar--img"  src="{{ theme.avatar }}"/>
  </a>
  <span class="menu__avatar--title">
    {% if theme.title %}
      {{ theme.title }}
    {% else %}
      {{ config.title }}
    {% endif %}
  </span>
</div>