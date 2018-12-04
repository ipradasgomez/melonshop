<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejemplo 01 - Variables simples</title>
</head>
<body>
<h1>Variables de la plantilla</h1>
<p>La variable {ldelim}$constanteDeTexto{rdelim} contiene <b>{$constanteDeTexto}</b></p>
<p>La variable {ldelim}$variableDeTexto{rdelim} contiene <b>{$variableDeTexto}</b></p>
<p>La variable {ldelim}$constanteNumerica{rdelim} contiene <b>{$constanteNumerica}</b></p>
<p>La variable {ldelim}$variableNumerica{rdelim} contiene <b>{$variableNumerica}</b></p>
<p>La fecha actual es <b>{$smarty.now}</b></p>


<h1>Operaciones con las variables</h1>
<a href="https://www.smarty.net/docsv2/en/language.modifiers.tpl" target="_blank">Operaciones con variables</a>
<p>La variable {ldelim}$constanteDeTexto{rdelim} en mayúsculas es <b>{$constanteDeTexto|upper}</b></p>
<p>La variable {ldelim}$constanteDeTexto{rdelim} en minúsculas es <b>{$constanteDeTexto|lower}</b></p>
<p>La variable {ldelim}$constanteDeTexto{rdelim} truncada en 3 es <b>{$constanteDeTexto|truncate:7:'...'}</b></p>
<p>La variable {ldelim}$constanteDeTexto{rdelim} en minúsculas truncada en 3 es
    <b>{$constanteDeTexto|lower|truncate:7:'...'}</b></p>
<p>La variable {ldelim}$constanteDeTexto{rdelim} repetida 7 veces es <b>{$constanteDeTexto|str_repeat:7}</b></p>


<h1>Operaciones con fechas</h1>
<a href="https://www.smarty.net/docsv2/es/language.modifier.date.format.tpl" target="_blank">Fechas y operaciones</a>
<p>La fecha actual es <b>{$smarty.now}</b></p>
<p>La fecha actual es <b>{$smarty.now|date_format:"%Y/%m/%d"}</b></p>
<p>La fecha actual es <b>{$fechaDeAyer|date_format}</b></p>
</body>
</html>