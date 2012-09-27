var CreditCard = {

	cleanNumber: function (number) {
		return number.replace(/[\- ]/g, '');
	},

	validNumber: function (number) {
		var i, n, total = 0;
		number = this.cleanNumber(number);

		for (i = number.length - 1; i >= 0; i--) {
			n = parseInt(number[i], 10);

			if ((i + number.length) % 2 === 0) {
				n = n * 2 > 9 ? n * 2 - 9 : n * 2;
			}
			total += n;
		}
		return total % 10 === 0;
	}
};

// jQuery Plugin to attach the validation to input text objects.
(function ($) {

  $.fn.validateCreditCardNumber = function () {
    return this.each(function () {

      $(this).blur(function () {
        if(!CreditCard.validNumber(this.value)) {
          $("#" + this.id + "_error").text("Invalid credit card number");
        } else {
          $("#" + this.id + "_error").text("ok");
        }

      });
    });

  };
})(jQuery);
