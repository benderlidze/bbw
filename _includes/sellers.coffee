{% assign lang = site.data.translations[page.lang] %}
window.sellers = []
{% for name in site.data.buy %}
{% if name.countries %}
  countries: "{{name.countries}}"
  methods:   "{{name.po}}"
  hide:      "{{name.hide}}"
  url:       "{{name.url}}"
  html:      (
    """
      {% include buy-list-en.html %}
    """
  )
{% endif %}
{% endfor %}