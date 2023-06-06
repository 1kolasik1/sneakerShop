<!DOCTYPE html>
<html>
<head>
    <title>SneakerShop</title>
</head>
<body>
<h1>SneakerShop</h1>
<#if user.email??>
    <h3>Имя пользователя: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйти"/>
    </form>
    <#else>
        <a href="/login">Войти</a> <hr>
</#if>

<h4>Популярный интернет-магазин б/у кроссовок,прямо в центре Минска!</h4>
<form action="/" method="get">
    Поиск по названию объявления: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} $| <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
<#if user.email??>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    <b>Название объявления: </b> <input type="text" name="title"><br><br>
    <b>Описание объявления: <input type="text" name="description"><br><br>
    <b>Цена:</b> <input type="number" name="price"><br><br>
    <b>Город:</b> <input type="text" name="city"><br><br>
    <b>Производитель:</b> <input type="text" name="email"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Добавить товар"/>
</form>
</#if>
</body>
</html>