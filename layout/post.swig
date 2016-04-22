{% extends '_layout.swig' %}
{% import '_macro/post.swig' as render %}

{% block title %} {{page.title}} - {{config.title}} {% endblock %}

{% block page_class %}page-post-detail{% endblock %}

{% block content %}
  {{render.post(page)}}
{% endblock %}