{% extends 'includes/layout.swig' %}

{% block body %}
  <div id="tag" class="post tag">
    <div class='tag__name'>{{ page.tag }}</div>
    {% for article in page.posts.toArray() %}
      <div class="tag__item">
        <a class='tag__item--link' href="{% if article.link %}{{ url_for(article.link) }}{% else %}{{ url_for(article.path) }}{% endif %}">
          <div class='tag__item--date'>
            {{ date(article.date) }}
          </div>
          <h1 class="tag__item--title">
            {% if article.title && article.link %}
              {{ article.title }} <i class="tag__item--icon if i-link"></i>
            {% elseif article.title %}
              {{ article.title }}
            {% else %}
              无题
            {% endif %}
          </h1>
        </a>
      </div>
    {% endfor %}
  </div>
  {% include 'includes/paginator.swig' %}
{% endblock %}
