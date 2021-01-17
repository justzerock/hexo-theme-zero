
{% if page.posts.length > 0 %}
  <div id="recent-posts">
    <h1>All Posts</h1>
    {% for postItem in page.posts.toArray() %}
      <div class="recent-post-item">
        <h1 class="post-title">
          <a href="{{ url_for(postItem.path) }}">
          {% if postItem.title %}
            {{ postItem.title }}
          {% else %}
            无题
          {% endif %}
          </a>
        </h1>
        <div class="post-date">
          <span class="date-create">
            <span class="icon-date"><i class="if i-date"></i></span>
            <time datetime="{{ postItem.date.toJSON() }}">
              {{ date(postItem.date) }}
            </time>
          </span>
          {% if date(postItem.date) !== date(postItem.updated) %}
            <i class="dot"></i>
            <span class="date-update">
              <span class="icon-updated"><i class="if i-updated"></i></span>
              <time datetime="{{ postItem.updated.toJSON() }}">
                {{ date(postItem.updated) }}
              </time>
            </span>
          {% endif %}
        </div>
        {% if postItem.top_img %}
          <div class="post-top-img">
            <img src="{{postItem.top_img}}" />
          </div>
        {% endif %}
        {% if postItem.excerpt %}
          <div class="post-excerpt">
            {{ postItem.excerpt }}
          </div>
        {% endif %}
        <div class="post-link">
          <a href="{{ url_for(postItem.path) }}">查看全文</a>
        </div>
      </div>
    {% endfor %}
  </div>
{% endif %}
