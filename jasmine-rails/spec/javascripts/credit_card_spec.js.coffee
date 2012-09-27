describe "CreditCard", ->

  it "cleans number by removing spaces and dashes", ->
    expect(CreditCard.cleanNumber("123 4-5")).toEqual "12345"

  it "validates based on mod 10", ->
    expect(CreditCard.validNumber("4111-1111 1111-1111")).toBeTruthy()
    expect(CreditCard.validNumber("4111111111111121")).toBeFalsy()
    expect(CreditCard.validNumber("411123123121")).toBeFalsy()

  it "validates when the text field loses the focus", ->
    loadFixtures "form.html"

    credit_card = $("#credit_card")
    credit_card.validateCreditCardNumber()

    credit_card.val("12312 3123 1231 2313").trigger "blur"
    expect($("#credit_card_error")).toHaveText "Invalid credit card number"

    credit_card.val("5500 0000 0000 0004").trigger "blur"
    expect($("#credit_card_error")).toHaveText "ok"
