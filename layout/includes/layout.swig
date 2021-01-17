
{% set pageTitle = page.title || config.subtitle || '' %}

{% if is_archive() %}
  {% set pageTitle = 'Archives' %}
{% endif %}

{% if is_tag() %}
  {% set pageTitle = 'Tag: ' + page.tag %}
{% endif %}

{% if is_category() %}
  {% set pageTitle = 'Category: ' + page.category %}
{% endif %}

{% if is_month() %}
  {% set pageTitle = pageTitle + ': ' + page.month + '/' + page.year %}
{% endif %}

{% if is_year() %}
  {% set pageTitle = pageTitle + ': ' + page.year %}
{% endif %}

{% set pageTitle = pageTitle + ' · ' + config.title %}

<!doctype html>
<html lang="{{ config.language }}">
<head>
  <meta charset="UTF-8">
  <title>{{ pageTitle }}</title>
  {% if theme.stylesheets !== undefined && theme.stylesheets.length > 0 %}
    {# stylesheet list from _config.yml #}
    {% for url in theme.stylesheets %}
      <link rel="stylesheet" href="{{ url }}">
    {% endfor %}
  {% endif %}
</head>
<body>

<div id="menu-outer">
  <div id="menu-inner">
    {% for key in Object.keys(theme.menu) %}
      <a href="{{ theme.menu[key] }}">{{ key }}</a>
    {% endfor %}
  </div>
</div>

<div id="content-outer">
  <div id="content-inner">
    {# {% autoescape false %}{{ body }}{% endautoescape %} #}
    {% block body %}{% endblock %}
  </div>
</div>

<div id="bottom-outer">
  <div id="bottom-inner">
    <a href="https://beian.miit.gov.cn">闽ICP备19023197号-1</a>
    <span>Copyright © 2021 <span class="icon-love"><i class="if i-love"></i></span> {{ config.author }}</span>
    <span>由 <a href="http://hexo.io">Hexo</a> 强力驱动 | 主题 <a href="{{ theme.url }}">Zexo</a></span>
  </div>
</div>

{% if theme.scripts !== undefined && theme.scripts.length > 0 %}
  {# scripts list from config.yml #}
  {% for url in theme.scripts %}
    <script src="{{ url }}"></script>
  {% endfor %}
{% endif %}

</body>
</html>
