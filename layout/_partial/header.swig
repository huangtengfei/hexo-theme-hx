{% if theme.menu %}
  <ul id="menu" class="menu">
    {% for name, path in theme.menu %}
      <li class="menu-item">
        <a href="{{ url_for(path) }}">
          {{ __('menu.' + name) }}
        </a>
      </li>    
    {% endfor %}  
  </ul>
{% endif %}   