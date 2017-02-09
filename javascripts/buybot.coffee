---
sitemap:
  exclude: 'yes'
---
{% assign lang = site.data.translations[page.lang] %}

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
        сountryRegExp.test(seller.countries) && paymentRegExp.test(seller.methods) && seller.html.trim() !=  ''
  )

  $selector.html('')
  $notification.removeClass()
  $notification.text('')
  $notification.hide()

  if !countryCode && !paymentCode
    $notification.text('Please select a country and payment method.')
    $notification.addClass('country-pmethod')
  else if !countryCode
    $notification.text(i18n.select_country)
    $notification.addClass('warning-row')
  else if !paymentCode
    $notification.text(i18n.select_payment_method)
    $notification.addClass('warning-row')
  else if _.isEmpty(scope)
    $notification.text(i18n.no_sellers_found)
    $notification.addClass('warning-row')
  else
    $notification.html(_.template(i18n.sellers_found)(
        exchangeCount: scope.length
        countryName:   countryName
        paymentMethodName: paymentName
      )
    )
    $notification.addClass('bg-success')
    for seller in scope
      $selector.append(seller.html)

  unless $notification.is(':empty')
    $notification.show()

  unless $selector.is(':empty')
    $('html, body').animate
      scrollTop: $notification.offset().top

  scope = undefined

$('.type-select-container').select2()
$('select#country, select#payment_method').on 'change', filterAndRenderSellers
filterAndRenderSellers()