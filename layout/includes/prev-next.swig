<div class="post__paginator">
{% if page.prev %}
  <div class="post__prev">
    <a class="post__prev--link" href="{{ url_for(page.prev.path) }}">
      <i class="post__prev--icon if i-prev"></i>
      <span class="post__prev--text">
        {{ page.prev.title }}
        
      </span>
      <span class="post__prev--block"></span>
    </a>
  </div>
{% else %}
  <div class="post__prev">
    <span class="post__prev--text">
      没有了
    </span>
  </div>
{% endif %}
{% if page.next %}
  <div class="post__next">
    <a class="post__next--link" href="{{ url_for(page.next.path) }}">
      <span class="post__next--block"></span>
      <span class="post__next--text">
        {{ page.next.title }} 
      </span>
      <i class="post__next--icon if i-next"></i>
    </a>
  </div>
{% else %}
  <div class="post__next">
    <span class="post__next--text">
      没有了
    </span>
  </div>
{% endif %}
</div>