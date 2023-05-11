
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
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{{ pageTitle }}</title>
  <link rel="preconnect" href="https://gstatic.loli.net">
  <link rel="preconnect" href="https://gstatic.loli.net" crossorigin>
  {% if theme.stylesheets !== undefined && theme.stylesheets.length > 0 %}
    {# stylesheet list from _config.yml #}
    {% for url in theme.stylesheets %}
      <link rel="stylesheet" href="{{ url }}">
    {% endfor %}
  {% endif %}
  {% include '../_third-party/jq-head.swig' %}
  {% include '../_third-party/valine-head.swig' %}
  {% include '../_third-party/waline-head.swig' %}
</head>
<body>


{% include './menu.swig' %}
  
<div class="content-main">
  {# {% autoescape false %}{{ body }}{% endautoescape %} #}
  {% block body %}{% endblock %}
</div>

{% include './sidebar.swig' %}

{% include './go-top.swig' %}
{% include './settings.swig' %}
{% include './search.swig' %}

{% include './bottom.swig' %}

{% if theme.scripts !== undefined && theme.scripts.length > 0 %}
  {# scripts list from config.yml #}
  {% for url in theme.scripts %}
    <script src="{{ url }}"></script>
  {% endfor %}
{% endif %}
</body>
</html>
