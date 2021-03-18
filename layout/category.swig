{% extends 'includes/layout.swig' %}

{% block body %}
  <div id="category" class="category">
    <h1 class="category__title">{{ page.category }}</h1>
    {% for postItem in page.posts.toArray() %}
      <div class="category__item">
        <a href="{{ url_for(postItem.path) }}">
          {{ postItem.title }}
        </a>
        <time datetime="{{ date_xml(postItem.date) }}">
          {{ date(postItem.date) }}
        </time>
      </div>
    {% endfor %}
  </div>

  {% include 'includes/paginator.swig' %}

{% endblock %}
