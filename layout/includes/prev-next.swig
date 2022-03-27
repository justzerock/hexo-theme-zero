<div class="post__paginator">
{% if page.prev %}
  <div class="post__prev">
    <a class="post__prev--link" href="{{ url_for(page.prev.path) }}">
      <i class="post__prev--icon if i-arrow-left"></i>
      <span class="post__prev--text">
        {% if page.prev.title %}
          {{ page.prev.title }}
        {% else %}
            无题
        {% endif %}
      </span>
      <span class="post__prev--block"></span>
    </a>
  </div>
{% else %}
  <div class="post__prev">
    <span class="post__prev--text">
    </span>
  </div>
{% endif %}
{% if page.next %}
  <div class="post__next">
    <a class="post__next--link" href="{{ url_for(page.next.path) }}">
      <span class="post__next--block"></span>
      <span class="post__next--text">
        {% if page.next.title %}
          {{ page.next.title }} 
        {% else %}
            无题
        {% endif %}
      </span>
      <i class="post__next--icon if i-arrow-right"></i>
    </a>
  </div>
{% else %}
  <div class="post__next">
    <span class="post__next--text">
    </span>
  </div>
{% endif %}
</div>