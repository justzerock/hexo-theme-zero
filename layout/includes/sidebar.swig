<div class="sidebar">
  {% if is_post() || is_page() %}
  {{ toc(page.content, {
    class: 'sidebar__toc'
  }) }}
  {% else %}
  {{ tagcloud(site.tags, {
    class: 'sidebar__tag',
    min_font: 16,
    max_font: 28,
    unit: px
  }) }}
  {% endif %}
</div>