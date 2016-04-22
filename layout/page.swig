{% extends '_layout.swig' %}

{% block title %} {{ __('menu.categories') }} - {{ config.title }} {% endblock %}

{% block page_class %}page-category{% endblock %}

{% block content %}
  <div class="tag-wrapper">
  	{# tagcloud page support #}
    <div class="tag-cloud">
  	  <div class="tag-cloud-title">
  	    标签
  	    <!-- {{ _p('counter.tag_cloud', site.tags.length) }} -->
  	  </div>
  	  <div class="tag-cloud-tags">
  	    {{ tagcloud({min_font: 12, max_font: 30, amount: 200, color: true, start_color: '#ccc', end_color: '#111'}) }}	
  	  </div>
    </div>
  </div>
  <div class="category-wrapper">
    <div class="category-title">
      分类
      <!-- {{ _p('counter.category', site.categories.length) }}	 -->
    </div>
    <div class="categories">
      {% for cate in site.categories %}
        <a class="category-link" href="{{url_for(cate.path)}}">{{ cate.name }}</a>        
      {% endfor %}
    </div>
  </div>
{% endblock %}