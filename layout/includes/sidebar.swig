<div class="sidebar">
  {% if is_post() || is_page() %}
  <div class="sidebar__toc">
    <div class='sidebar__toc--icon'><i class='if i-toc'>目录</i></div>
    <div class="sidebar__toc--list" id="sidebar__toc--list"></div>
  </div>
  {% else %}
  <div class="sidebar__tag">
  <div class='sidebar__tag--icon'><i class='if i-Tags'></i></div>
  {{ tagcloud(site.tags, {
    class: 'sidebar__tag--item',
    min_font: 16,
    max_font: 28,
    unit: px
  }) }}
  </div>
  {% endif %}
</div>