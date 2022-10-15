
{% if page.posts.length > 0 %}
  <div id="recent-posts" class="post-list">
    {% for postItem in page.posts.toArray() %}
      <div class="post-list__item">
        <div class="post-list__info">
          <a class="post-list__title--link" href="{% if postItem.link %}{{ url_for(postItem.link) }}{% else %}{{ url_for(postItem.path) }}{% endif %}">
            <h1 class="post-list__title">
            {% if postItem.title && postItem.link %}
               {{ postItem.title }} <i class="post-list__title--icon if i-link"></i>
            {% elseif postItem.title %}
              {{ postItem.title }}
            {% else %}
              无题
            {% endif %}
            </h1>
          </a>
          {% if postItem.excerpt %}
            <a class="post-list__excerpt" href="{% if postItem.link %}{{ url_for(postItem.link) }}{% else %}{{ url_for(postItem.path) }}{% endif %}">
              {{ strip_html(postItem.excerpt) }}
            </a>
          {% endif %}
          <div class="post-list__bottom">
            <div class="post-list__date">
                {#<i class="if i-date post-list__date--icon"></i>#}
                <span class="post-list__date--date">
                  {#{ moment(postItem.date).format("YYYY-MM-DD") }#}
                  发布于 {{ date(postItem.date) }}
                </span>
            </div>
            {% if postItem.categories.length %}
              <i class="if i-Categories post-list__category--icon"></i> 
              {% for category in postItem.categories %}
                <a class="post-list__category" href="{{ url_for(category.path) }}">
                · {{ category.name }}
                </a>
              {% endfor %}
            {% endif %}
            {% if postItem.tags.length %}
              <i class="if i-Tags post-list__tag--icon"></i>
              {% for tag in postItem.tags %}
                <a 
                  class="post-list__tag" 
                  href="{{ url_for(tag.path) }}"
                >#{{ tag.name }}</a>
              {% endfor %}
            {% endif %}
          </div>
        </div>
        {% if postItem.top_img %}
        <a class="post-list__img--link" href="{{ url_for(postItem.path) }}">
          <img class="post-list__img--img" src="{{postItem.top_img}}" />
        </a>
        {% endif %}
      </div>
    {% endfor %}
  </div>
{% endif %}
