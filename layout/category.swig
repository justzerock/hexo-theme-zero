{% extends 'includes/layout.swig' %}

{% block body %}
  <div id="category" class="post category">
    <div class='category__name'>{{ page.category }}</div>
    {% for article in page.posts.toArray() %}
      <div class="category__item">
        <a class='category__item--link' href="{% if article.link %}{{ url_for(article.link) }}{% else %}{{ url_for(article.path) }}{% endif %}">
          <div class='category__item--date'>
            {{ date(article.date) }}
          </div>
          <h1 class="category__item--title">
            {% if article.title && article.link %}
              {{ article.title }} <i class="category__item--icon if i-link"></i>
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
