Boilerplates
============

### Using

- Using rails (3.2.8)

[Jasmine][jasmine]
------------------
The original Jasmine gem. Plus the Jasmine jQuery helpers to use Fixtures and
common matchers. You'll get Jasmine tests in Javascript.

[Jasmine + CoffeeScript][jasmine_coffee]
----------------------------------------
Jasmine gem + Jasmine jQuery + CoffeeScript. It's able to use CoffeeScript
source files since Rails +3.1 (but still can't use Coffee inside the specs)

[Jasminerice + Guard-Jasmine ][jasminerice]
-------------------------------------------
Don't requires the Jasmine gem, it includes jQuery-Jasmine helpers, and it's able
to use CoffeeScript source files since Rails +3.1. Adding Guard-Jasmine you can
write specs in CoffeeScript but is not built in, neither the CI execution.

[Jasmine-Rails][jasmine-rails]
------------------------------
You can write specs and source in CoffeeScript, CI rake task already implemented.
Best integration with Rails applications.

[jasmine]: https://github.com/mariozaizar/boilerplates/tree/master/jasmine/README.md
[jasmine_coffee]: https://github.com/mariozaizar/boilerplates/tree/master/jasmine-coffee/README.md
[jasminerice]: https://github.com/mariozaizar/boilerplates/tree/master/jasminerice/README.md
[jasmine-rails]: https://github.com/mariozaizar/boilerplates/tree/master/jasmine-rails/README.md
