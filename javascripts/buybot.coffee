---
sitemap:
  exclude: 'yes'
---
filterAndRenderSellers = () ->
  $country      = $('select#country')
  $payment      = $('select#payment_method')
  $selector     = $('#sellers')
  $notification = $('#notification')

  countryCode   = $country.val()
  paymentCode   = $payment.val()
  countryName   = $country.find('option:selected').text()
  paymentName   = $payment.find('option:selected').text()

  scope = (
    if !countryCode || !paymentCode
      []
    else
      _.filter sellers, (seller) ->
        сountryRegExp = new RegExp(countryCode, "i")
        paymentRegExp = new RegExp(paymentCode, "i")
        сountryRegExp.test(seller.countries) && paymentRegExp.test(seller.methods)
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
    $notification.html(
      "We found <strong>#{ scope.length }</strong> Bitcoin exchange#{ ( if scope.length > 1 then 's' else '') }
      in <strong>#{countryName}</strong> that accept <strong>#{paymentName}</strong>:"
    )
    $notification.addClass('bg-success')
    for seller in scope
      $selector.append(seller.html)

  unless $notification.is(':empty')
    $notification.show()

  unless $selector.is(':empty')
    $('html, body').animate
      scrollTop: $notification.position().top

  scope = undefined

$(document).ready ->
  $('.type-select-container').select2();
  $('select#country, select#payment_method').on 'change', filterAndRenderSellers
filterAndRenderSellers()