{% assign lang = site.data.translations[page.lang] %}
window.i18n = {}
{% for translation in lang %}
window.i18n["{{translation[0]}}"] = "{{translation[1]}}"
{% endfor %}