{% extends 'includes/layout.swig' %}

{% block body %}
  <div class="post">
    <article id="post" class="post__article {% if page.top_img %} post__article--top {% endif %}">
      {% if page.top_img %}
      <p>
        <img class="post__top-img" src="{{page.top_img}}" />
      </p>
      {% endif %}
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
      <div class='post__article--date'>
        {{ moment(page.date).format("YYYY.MM.DD") }}
        {#{ date(page.date) }#}
      </div>
      <div class="post__article--content">
      {% autoescape false %}{{ page.content }}{% endautoescape %}
      {% if page.photos %}
        <div  class='post__gallery--block'>
        {% for photo in page.photos %}
          <a class='fancybox post__gallery--link' href='{{ url_for(photo) }}'>
            <img class='post__gallery--img' src="{{ url_for(photo) }}" />
          </a>
        {% endfor %}
        </div>
      {% endif %}
      </div>
      {% if page.categories.length %}
        <i class="if i-Categories post-list__category--icon"></i>
        {% for category in page.categories %}
          <a class="post-list__category" href="{{ url_for(category.path) }}">
            · {{ category.name }}
          </a>
        {% endfor %}
      {% endif %}
      {% if page.tags.length %}
        <i class="if i-Tags post-list__tag--icon"></i>
        {% for tag in page.tags %}
          <a class="post-list__tag" href="{{ url_for(tag.path) }}">#{{ tag.name }}</a>
        {% endfor %}
      {% endif %}
    </article>
    {% include 'includes/prev-next.swig' %}
    {% include '_third-party/highlight-copy.swig' %}
    {# include '_third-party/beaudar.swig' #}
    {% include '_third-party/waline.swig' %}
  </div>

{% endblock %}
