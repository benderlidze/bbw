---
sitemap:
  exclude: 'yes'
---
filterAndRenderSellers = (countryCode, paymentCode, selector) ->
  $selector = $(selector)
  $notification = $selector.siblings('#notification')

  scope = (
    if !countryCode || !paymentCode
      []
    else
      _.filter sellers, (seller) ->
        сountryRegExp = new RegExp(countryCode, "i")
        methodRegExp  = new RegExp(paymentCode, "i")
        сountryRegExp.test(seller.countries) && methodRegExp.test(seller.methods)
  )

  $selector.html('')
  $notification.removeClass()
  $notification.text('')
  $notification.hide()

  if !countryCode && !paymentCode
    $notification.text('Please select a country and payment method.')
    $notification.addClass('country-pmethod')
  else if !countryCode
    $notification.text('Please select a country.')
    $notification.addClass('warning-row')
  else if !paymentCode
    $notification.text('Please select a payment method.')
    $notification.addClass('warning-row')
  else if _.isEmpty(scope)
    $notification.text('Sorry, no matches found.')
    $notification.addClass('warning-row')
  else
    $notification.html("We found <b>#{ scope.length }</b> Bitcoin exchange#{ ( if scope.length > 1 then 's' else '') }:")
    $notification.addClass('bg-success')
    for seller in scope
      $selector.append(seller.html)

  unless $notification.is(':empty')
    $notification.show()

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