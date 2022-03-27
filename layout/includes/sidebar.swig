<div class="sidebar">
  {% if is_post() || is_page() %}
  <div class="sidebar__toc" id="sidebar__toc"></div>
  {#{{ toc(page.content, {
    class: 'sidebar__toc',
    list_number: false
  }) }}#}
  {% else %}
  {{ tagcloud(site.tags, {
    class: 'sidebar__tag',
    min_font: 16,
    max_font: 28,
    unit: px
  }) }}
  {% endif %}
</div>