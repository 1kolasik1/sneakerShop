<!DOCTYPE html>
<html>
<head>
    <title>SneakerSHOP</title>
</head>
<body>
<h1>SneakerSHOP</h1>
<h3>Подробная информация о продавце ${user.name}</h3>
<b>Электронная почта:</b> ${user.email}
<h4>Товары пользователя ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} $| <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>