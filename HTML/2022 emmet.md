# EMMET

## HEAD

- link

`<link rel="stylesheet" href="" />`

- link:css

`<link rel="stylesheet" href="style.css" />`

- link:favicon

`<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />`

- link:rss

`<link rel="alternate" type="application/rss+xml" title="RSS" href="rss.xml" />`

- meta:utf

`<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />`

- meta:vp

`<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />`

- style

`<style></style>`

- script

`<script></script>`

- script:src

`<script src=""></script>`

## TAG

- img

`<img src="" alt="" />`

- a

`<a href=""></a>`

- br

`<br />`

- hr

`<hr />`

- c

`<!-- -->`

- tr+

`<tr><td></td></tr>`

- ol+

`<ol><li></li></ol>`

- ul+

`<ul><li></li></ul>`

- mn

`<main></main>`

- sect

`<section></section>`

- art

`<article></article>`

- hdr

`<header></header>`

- ftr

`<footer></footer>`

- adr

`<address></address>`

- str

`<strong></strong>`

## FORM

- form

`<form action=""></form>`

- form:get

`<form action="" method="get"></form>`

- form:post

`<form action="" method="post"></form>`

- label

`<label for=""></label>`

- input

`<input type="text" />`

- inp

`<input type="text" name="" id="" />`

- input:hidden, input:h

`<input type="hidden" name="" />`

- input:text, input:t

`<input type="text" name="" id="" />`

- input:search

`<input type="search" name="" id="" />`

- input:email

`<input type="email" name="" id="" />`

- input:url

`<input type="url" name="" id="" />`

- input:password, input:p

`<input type="password" name="" id="" />`

- input:datetime

`<input type="datetime" name="" id="" />`

- input:date

`<input type="date" name="" id="" />`

- input:datetime-local

`<input type="datetime-local" name="" id="" />`

- input:month

`<input type="month" name="" id="" />`

- input:week

`<input type="week" name="" id="" />`

- input:time

`<input type="time" name="" id="" />`

- input:tel

`<input type="tel" name="" id="" />`

- input:number

`<input type="number" name="" id="" />`

- input:color

`<input type="color" name="" id="" />`

- input:checkbox, input:c

`<input type="checkbox" name="" id="" />`

- input:radio, input:r

`<input type="radio" name="" id="" />`

- input:range

`<input type="range" name="" id="" />`

- input:file, input:f

`<input type="file" name="" id="" />`

- input:submit, input:s

`<input type="submit" value="" />`

- input:image, input:i

`<input type="image" src="" alt="" />`

- input:button, input:b

`<input type="button" value="" />`

- input:reset

`<input type="reset" value="" />`

- button:submit, button:s, btn:s

`<button type="submit"></button>`

- button:reset, button:r, btn:r

`<button type="reset"></button>`

- button:disabled, button:d, btn:d

`<button disabled="disabled"></button>`

- btn

`<button></button>`

- fieldset:disabled, fieldset:d, fset:d, fst:d

`<fieldset disabled="disabled"></fieldset>`

- fst, fset

`<fieldset></fieldset>`

- optg

`<optgroup></optgroup>`

- select

`<select name="" id=""></select>`

- select:disabled, select:d

`<select name="" id="" disabled="disabled"></select>`

- select+

`<select name="" id=""><option value=""></option></select>`

- option, opt

`<option value=""></option>`

- table+

`<table><tr><td></td></tr></table>`

- textarea

`<textarea name="" id="" cols="30" rows="10"></textarea>`

- tarea

`<textarea name="" id="" cols="30" rows="10"></textarea>`


# COMANDOS
- ! 
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Document</title>
</head>
<body>

</body>
</html>
```

- nav>ul>li
```html
<nav>
    <ul>
        <li></li>
    </ul>
</nav>
```

- div+p+span
```html
<div></div>
<p></p>
<span></span>
```
- ul>li>div+p+span
```html
<ul>
    <li>
        <div></div>
        <p></p>
        <span></span>
    </li>
</ul>
```

- ul>li>div+p^li>span
```html
<ul>
    <li>
        <div></div>
        <p></p>
    </li>
    <li><span></span></li>
</ul>
```
- ul>li>div+p^^p
```html
<ul>
    <li>
        <div></div>
        <p></p>
    </li>
</ul>
<p></p>
```

- ul>li*5>p
```html
<ul>
    <li>
        <p></p>
    </li>
    <li>
        <p></p>
    </li>
    <li>
        <p></p>
    </li>
    <li>
        <p></p>
    </li>
    <li>
        <p></p>
    </li>
</ul>
```
- ul>li>(p+span)*2
```html
<ul>
    <li>
        <p></p>
        <span></span>
        <p></p>
        <span></span>
    </li>
</ul>
```
- ul>li>p.text#first
```html
<ul>
    <li>
        <p class="text" id="first"></p>
    </li>
</ul>
```

- ul>li>p.text.paragraph#first
```html
<ul>
    <li>
        <p class="text paragraph" id="first"></p>
    </li>
</ul>
```

- ul>li.item$*2>p
```html
<ul>
    <li class="item1">
        <p></p>
    </li>
    <li class="item2">
        <p></p>
    </li>
</ul>
```

- ul>li.item$*2>p[style="color: red"]
```html
<ul>
    <li class="item1">
        <p style="color: red"></p>
    </li>
    <li class="item2">
        <p style="color: red"></p>
    </li>
</ul>
```

- ul>li.item$*2>p[style="color: red" title="A color"]
```html
<ul>
    <li class="item1">
        <p style="color: red" title="A color"></p>
    </li>
    <li class="item2">
        <p style="color: red" title="A color"></p>
    </li>
</ul>
```

- ul>li.item$*2>p{Text}
```html
<ul>
    <li class="item1">
        <p>Text</p>
    </li>
    <li class="item2">
        <p>Text</p>
    </li>
</ul>
```

- ul>li.item$*2>p{Text $}
```html
<ul>
    <li class="item1">
        <p>Text 1</p>
    </li>
    <li class="item2">
        <p>Text 2</p>
    </li>
</ul>
```
ul>li.item$@10*2>p{Text $@3}
```html
<ul>
    <li class="item10">
        <p>Text 3</p>
    </li>
    <li class="item11">
        <p>Text 4</p>
    </li>
</ul>
```
