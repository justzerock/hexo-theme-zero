<div class="sidebar">
  {% if is_post() || is_page() %}
  <div class="sidebar__toc">
    {#<div class='sidebar__toc--icon'><i class='if i-toc'></i></div>#}
    <div class="sidebar__toc--list" id="sidebar__toc--list"></div>
  </div>
  {% elseif is_home() %}
  <div class="sidebar__tag">
    {{ tagcloud(site.tags, {
      class: 'sidebar__tag--item',
      min_font: 16,
      max_font: 28,
      unit: px
    }) }}
    <div class='sidebar__tag--icon'><i class='if i-Tags'></i></div>
  </div>
  {#<div class="sidebar__category">
    {{ list_categories(site.categories, {
      class: 'sidebar__category--item'
    }) }}
    <div class='sidebar__category--icon'><i class='if i-Categories'></i></div>
  </div>#}
  {% endif %}
</div>