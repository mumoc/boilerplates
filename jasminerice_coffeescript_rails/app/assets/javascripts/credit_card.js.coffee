CreditCard =
  cleanNumber: (number) ->
    number.replace /[\- ]/g, ""

  validNumber: (number) ->
    i = undefined
    n = undefined
    total = 0
    number = @cleanNumber(number)
    i = number.length - 1
    while i >= 0
      n = parseInt(number[i], 10)
      n = (if n * 2 > 9 then n * 2 - 9 else n * 2)  if (i + number.length) % 2 is 0
      total += n
      i--
    total % 10 is 0

# jQuery Plugin to attach the validation to input text objects.
(($) ->
  $.fn.validateCreditCardNumber = ->
    @each ->
      $(this).blur ->
        unless CreditCard.validNumber(@value)
          $("#" + @id + "_error").text "Invalid credit card number"
        else
          $("#" + @id + "_error").text "ok"
) jQuery
