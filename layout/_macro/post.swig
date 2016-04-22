{% macro post(post)%}
  <div class="post post-type-{{ post.type | default('normal') }}">
    <div class="post-header">
      <h1 class="post-title">
    	{% if is_post() %}
    	  {{ post.title }}
    	{% else %}
    	  <a class="post-title-link" href="{{ url_for(post.path) }}">
    	  	{{ post.title | default(__('post.untitled')) }}
    	  </a>  
    	{% endif %}	
      </h1>
    </div>
    <div class="post-body">
      {% if not is_post() and post.excerpt %}
        {{post.excerpt}}
      {% else %}  
        {{ post.content }}
      {% endif %}
    </div>
    <div class="post-footer">
      <span class="post-meta">
      	<span class="post-time">
      	  {{ post.date | date('Y-m-d H:i', -480, 'CCT')}}
      	</span>
      </span>
      {% if post.tags and post.tags.length %}       
        <span class="post-tags">
          <i class="icon-tags"></i>
      	  {% for tag in post.tags %}
      	    <a href="{{ config.root + tag.path }}">
      	  	  {{ tag.name }}
      	    </a>
      	  {% endfor %}
        </span>
      {% endif %}  
      {% if not is_post() and post.excerpt %}
        <span class="post-more-link">
          <a href="{{ url_for(post.path) }}">
          	{{__('post.read_more')}} &raquo;
          </a>	
        </span>
      {% endif %}
    </div>
  </div>
{% endmacro %}