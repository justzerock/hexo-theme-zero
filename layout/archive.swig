{% extends 'includes/layout.swig' %}

{% block body %}
<div class='post archive'>
{%- set current_year = '1970' %}
{%- for post in page.posts.toArray() %}

  {%- set year = date(post.date, 'YYYY') %}

  {%- if year !== current_year %}
    {%- set current_year = year %}
    <div class="archive__collection">
      <span class="archive__collection--year">{{ current_year }}</span>
    </div>
  {%- endif %}

  <div class="archive__item">

    <a class="archive__item--link" href="{% if post.link %}{{ url_for(post.link) }}{% else %}{{ url_for(post.path) }}{% endif %}">
      <div class="archive__item--date">
          {{ date(post.date, 'MM-DD') }}
      </div>

      <h1 class="archive__item--title">
        {% if post.title && post.link %}
          {{ post.title }} <i class="archive__item--icon if i-link"></i>
        {% elseif post.title %}
          {{ post.title }}
        {% else %}
          无题
        {% endif %}
      </h1>
    </a>

  </div>

{%- endfor %}
</div>
{% include 'includes/paginator.swig' %}
{% endblock %}
