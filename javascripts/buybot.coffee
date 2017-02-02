---
sitemap:
  exclude: 'yes'
---
filterAndRenderSellers = (countryCode, methodCode, selector) ->
  $selector = $(selector)

  scope = (
    if !!countryCode && !!methodCode
      _.filter sellers, (seller) ->
        сountryRegExp = new RegExp(countryCode, "i")
        methodRegExp  = new RegExp(methodCode, "i")
        сountryRegExp.test(seller.countries) && methodRegExp.test(seller.methods)
    else if !!countryCode
      _.filter sellers, (seller) ->
        сountryRegExp = new RegExp(countryCode, "i")
        сountryRegExp.test(seller.countries)
    else if !!methodCode
      _.filter sellers, (seller) ->
        methodRegExp  = new RegExp(methodCode, "i")
        methodRegExp.test(seller.methods)
    else
      _.filter sellers, (seller) ->
        seller.hide isnt "true"
  )

  $selector.html('')

  if _.isEmpty(scope)
    $selector.next('.no-matches').show()
  else
    $selector.next('.no-matches').hide()
    for seller in scope
      $selector.append(seller.html)

  scope = undefined

$country = $("select#country")
$method  = $("select#payment_method")

$country.change -> 
  filterAndRenderSellers($country.val(), $method.val(), "#sellers")
$method.change ->
  filterAndRenderSellers($country.val(), $method.val(), "#sellers")
$(document).ready ->
  $(".type-select-container").select2();
  filterAndRenderSellers($country.val(), $method.val(), "#sellers")
