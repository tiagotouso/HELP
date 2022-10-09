# FLASK

# INSTALL

```
click==8.1.3
colorama==0.4.5
Flask==2.2.2
importlib-metadata==5.0.0
itsdangerous==2.1.2
Jinja2==3.1.2
MarkupSafe==2.1.1
python-dotenv==0.21.0
Werkzeug==2.2.2
zipp==3.8.1
```

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

# VARIÁVEIS
```
.flaskenv
    FLASK_APP=run.py
    FLASK_ENV=development
```

# IMPORT

```
flash
render_template
request
redirect
```

# BASIC

```
__init__
    from flask import Flask
    app = Flask(__name__)
    app.config['SECRET_KEY'] = SECRETKEY
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

```
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

# VALIDAÇÃO DE INFORMAÇÕES

```
{% set mensagens = get_flashed_messages() %}

{% with mensagens = get_flashed_messages() %}
{% endwith %}

{% if mensagens %}
    {% for msg in mensagens%}
        {{msg}}
    {% endfor %}


flash( mensagem )
return redirect( pagina )
```

# DATABASE

```
database
    from flask_sqlalchemy import SQLAlchemy

    db = SQLAlchemy()

init
    db.init_app(app)
```