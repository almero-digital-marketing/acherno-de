# {{ subject }}

## Kontaktinformationen
Von: **{{ name }}**
Telefon: **{{ phone }}**
E-Mail: **{{ from }}**
Datum: **{{ date }}**

## Informationen für des Objektes
Quadratur: **{{ area }}m2**
Stadt: **{{ city }}**

## Beschaffenheit der Objekte
{% for element in architecture %}{% if element %}
* {{ element }}{% endif %}{% endfor %}{% for element in scope %}{% if element %}
* {{ element }}{% endif %}{% endfor %}

## Aktuellen Zustand der Objekte
{% for element in condition %}{% if element %}
* {{ element }}{% endif %}{% endfor %}{% for element in keep %}{% if element %}
* {{ element }}{% endif %}{% endfor %}

## Aktuellen Fotos und Skizzen der Website
{% for element in files %}
* [{{ element|replace('http://api.acherno.com:8080/files/', '') }}]({{ element }}){% endfor %}

## Die gesuchte Vision
{% for element in style %}{% if element %}
* {{ element }}{% endif %}{% endfor %}

## Veränderungen der Anlagen und Verteilungen
{% for element in layout %}{% if element %}
* {{ element }}{% endif %}{% endfor %}

## Reparatur und Umbau
{% for element in construction %}{% if element %}
* {{ element }}{% endif %}{% endfor %}

## Möbel und Einrichtung
{% for element in furniture %}{% if element %}
* {{ element }}{% endif %}{% endfor %}

## Zusätzliche Kommentare und Anforderungen
{{ comments }}

- - -

# Analytics
Sitzungen: **{{ visits }}**
Übersicht: **{{ pages }}**

## Alle Sitzungen
{{ history }}

## Geografisch
Land: **{{ ipcountry }}**
{% if ipcity %}Stadt: **{{ ipcity }}**{% endif %}
Ort: [{{ iplocation }}](http://www.google.com/maps/place/{{ iplocation }})