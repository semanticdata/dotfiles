Used in Zola sites.

```css
details {
  border: 1px solid #aaa;
  border-radius: 4px;
  padding: 0.5em 0.5em 0;
}

summary {
  font-weight: bold;
  margin: -0.5em -0.5em 0;
  padding: 0.5em;
}

details[open] {
  padding: 0.5em;
}

details[open] summary {
  border-bottom: 1px solid #aaa;
  margin-bottom: 0.5em;
}
```

```html
{% if page.toc %}
<details open>
{# <details> #}
  <summary>
    Table of Contents
  </summary>

  <ul class="sublist-toc">
    {% for h1 in page.toc %}
    <li>
      <a href="{{ h1.permalink | safe }}">{{ h1.title }}</a>
      {% if h1.children %}
      <ul class="sublist-toc">
        {% for h2 in h1.children %}
        <li>
          <a href="{{ h2.permalink | safe }}">{{ h2.title }}</a>

          <ul class="sublist-toc">
            {% for h3 in h2.children %}
            <li>
              <a href="{{ h3.permalink | safe }}">{{ h3.title }}</a>
            </li>
            {% endfor %}
          </ul>

        </li>
        {% endfor %}
      </ul>
      {% endif %}
    </li>
    {% endfor %}
  </ul>
</details>
{% endif %}
```
