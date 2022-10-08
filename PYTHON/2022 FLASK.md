# FLASK

# EXTRUTURA

```
app
    templates
    static
        css
        img
        js
    routers
    modells
env
test
```

# BASIC

```
__init__
    from flask import Flask
    app = Flask(__name__)
    from app import routes

routes
    from app import app
    from flask import render_template
    from flask import request

    @app.route('/')
    @app.route('/index')
    def index():
        return render_template('index.html')
```


# STATICS

```
{{url_for('static', filename='style.css')}}

{{url_for('static', filename='imagem.png')}}
```


# FLASK REQUEST

### GET

```
objeto = request.args.get( name )
```


### POST

````
objeto = requeste.form[ name ]
```

# TEMPLATES

### TEMPLATES BASE
```
html
    head
        body

        {% block conteudo %}
        {% endblock %}
```

### CALL TEMPLATES

```
{% extends 'base.html' %}

{% block conteudo %}

TAGS

{% endblock %}
```