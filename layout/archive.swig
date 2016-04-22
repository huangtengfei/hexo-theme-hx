{% extends '_layout.swig' %}
{% import '_macro/post.swig' as render %}

{% block title %} {{ __('menu.archives') }} - {{ config.title }} {% endblock %}

{% block page_class %}page-archive{% endblock %}

{% block content %}  
  {% for post in page.posts %}
    {% set year %}
    {% set post.year = post.date | date('Y') %}
    {% if post.year !== year %}
      {% set year = post.year %}
      <p class="collection-title">{{ year }}</p>  
      <p class="post-header">
        <a class="post-title" href="{{ url_for(post.path) }}">{{ post.title }}</a>
        <span class="post-time">{{ post.date | date('Y-m-d', -480, 'CCT') }}</span>
      </p> 
    {% else %}
      <p class="post-header">
        <a class="post-title" href="{{ url_for(post.path) }}">{{ post.title }}</a>
        <span class="post-time">{{ post.date | date('Y-m-d', -480, 'CCT') }}</span>
      </p>  
    {% endif %}      
  {% endfor %} 
{% endblock %}