
{% if page.posts.length > 0 %}
  <div id="recent-posts" class="post-list">
    {% for postItem in page.posts.toArray() %}
      <div class="post-list__item">
        {% if postItem.top_img %}
          <img class="post-list__img" src="{{postItem.top_img}}" />
        {% endif %}
        <div class="post-list__text">
          <h1 class="post-list__title {% if postItem.top_img %} post-list__title--top {% endif %}">
            <a class="post-list__title--link" href="{% if postItem.link %}{{ url_for(postItem.link) }}{% else %}{{ url_for(postItem.path) }}{% endif %}">
            {% if postItem.title && postItem.link %}
              <i class="post-list__title--icon if i-link"></i> {{ postItem.title }}
            {% elseif postItem.title %}
              {{ postItem.title }}
            {% else %}
              （无标题）
            {% endif %}
            </a>
          </h1>
          {% if postItem.excerpt %}
            <div class="post-list__excerpt">
              {{ postItem.excerpt }}
            </div>
          {% endif %}
        </div>
        <div class="post-list__tags">
          <div class="post-list__date">
            <input type="checkbox" id="{{ postItem.date }}"
              class="post-list__date--checkbox" /> 
            <label for="{{ postItem.date }}" class="post-list__date--toggle"> 
              <i class="if i-date"></i>
              <span class="post-list__date--placeholder">{{ moment(postItem.date).format("YYYY-MM-DD") }}</span>
              <span class="post-list__date--relative">
                {{ moment(postItem.date).fromNow() }}
              </span>
              <span class="post-list__date--absolute">
                {{ moment(postItem.date).format("YYYY-MM-DD") }}
              </span>
            </label> 
          </div>
          {% if postItem.categories.length %}
            <span class="post-list__category">
              <i class="if i-Categories post-list__category--icon"></i>
              {% for category in postItem.categories %}
                <a class="post-list__category--link" href="{{ url_for(category.path) }}"> {{ category.name }}</a>
              {% endfor %}
            </span>
          {% endif %}
          {% if postItem.tags.length %}
            {% for tag in postItem.tags %}
              <a class="post-list__tag" href="{{ url_for(tag.path) }}"><i class="if i-Tags post-list__tag--icon"></i> {{ tag.name }}</a>
            {% endfor %}
          {% endif %}
        </div>
        <a class="post-list__link" href="{{ url_for(postItem.path) }}">
          <i class="post-list__link--icon if i-arrow-right"></i>
        </a>
      </div>
    {% endfor %}
  </div>
{% endif %}
