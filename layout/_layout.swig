<!DOCTYPE html>
<html>
<head>
  {% include '_partial/head.swig' %}
  <title>{% block title %}{% endblock %}</title>
</head>
<body>
  <div class="container {%block page_class %}{% endblock %}">

    <div id="header" class="header">
      {% include '_partial/header.swig' %}
    </div>

    <div id="main" class="main">
      <div id="content" class="content">
        <div id="posts" class="posts">
		    {% block content %}{% endblock %}		
        </div>
      </div>
    </div>

    <div class="footer">

    </div>
    
    <div class="back-to-top">
			
    </div>

  </div>
</body>
</html>