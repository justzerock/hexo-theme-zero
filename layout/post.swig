{% extends 'includes/layout.swig' %}

{% block body %}
  <div class="post">
    <article id="post" class="post__article">
      <h1 class="post__article--title">
      {% if page.title && page.link %}
        <a href="{{ url_for(page.link) }}"><i class="if i-link"></i> {{ page.title }}</a>
      {% elseif page.link %}
        <a href="{{ url_for(page.link) }}"><i class="if i-link"></i> {{ page.title }}</a>
      {% elseif page.title %}
        {{ page.title }}
      {% else %}
        无题
      {% endif %}
      </h1>
      {% if page.categories.length %}
        <span class="post-list__category">
          <i class="if i-Categories post-list__category--icon"></i>
          {% for category in page.categories %}
            <a class="post-list__category--link" href="{{ url_for(category.path) }}">{{ category.name }}</a>
          {% endfor %}
        </span>
      {% endif %}
      {% if page.tags.length %}
        {% for tag in page.tags %}
          <a class="post-list__tag" href="{{ url_for(tag.path) }}"><i class="if i-Tags post-list__tag--icon"></i> {{ tag.name }}</a>
        {% endfor %}
      {% endif %}
      {% autoescape false %}{{ page.content }}{% endautoescape %}
      {% if page.photos %}
        {% for photo in page.photos %}
          <img src="{{ url_for(photo) }}" />
        {% endfor %}
      {% endif %}
    </article>
  </div>

  {% include 'includes/prev-next.swig' %}
  {% include '_third-party/valine.swig' %}
  {% include '_third-party/fancybox.swig' %}

{% endblock %}
