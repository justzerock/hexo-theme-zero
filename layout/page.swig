{% extends 'includes/layout.swig' %}

{% block body %}
  <div class="post">
    <article id="post" class="post__article">
      <h1 class="post__article--title">
        {{ page.title }}
      </h1>
      <div class="post__article--content">
      {% autoescape false %}{{ page.content }}{% endautoescape %}
      </div>
    </article>
    {% include '_third-party/beaudar.swig' %}
  </div>

{% endblock %}
