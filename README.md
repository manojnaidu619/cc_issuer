# CC_issuer
A gem to find out issuer of the credit card just by entering the Card Number. Currently supports..

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/1200px-Mastercard-logo.svg.png" heigth="100px" width="100px" />
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Visa.svg/1200px-Visa.svg.png" heigth="100px" width="100px" />
<img src="https://securecdn.pymnts.com/wp-content/uploads/2014/03/Discover-logo-e1416429693676.jpg" heigth="100px" width="100px" />
<img src="https://www.underconsideration.com/brandnew/archives/american_express_logo_wordmark_detail.png" heigth="200px" width="100px" />
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/JCB_logo.svg/1200px-JCB_logo.svg.png" heigth="100px" width="100px" />
<img src="https://www.datatrans.ch/userobjects/4503_3636_ms_acc.png" heigth="100px" width="100px" />
<img src="http://www.extrapackofpeanuts.com/wp-content/uploads/2013/03/carte-blanche-logo.jpg" heigth="100px" width="100px" />
<img src="https://vignette.wikia.nocookie.net/logopedia/images/2/28/DinersClub1950.png/revision/latest?cb=20171213151438" heigth="100px" width="100px" />
<img src="https://cdn.freebiesupply.com/logos/large/2x/enroute-card-logo-png-transparent.png" heigth="100px" width="100px" />


## How To Install?

Add this line to your application's Gemfile:

```ruby
gem 'cc_issuer'
```

And then execute:

    $ bundle install

OR install it yourself as:

    $ gem install cc_issuer

## Usage

 ```ruby
require 'cc_issuer'
'4444 4444 4444 4444'.cci?   # => Visa
```
> Where, 4444 4444 4444 4444 is to be replaced by your Card Number
##### Even works like this...

```ruby
require 'cc_issuer'
'4444444444444444'.cci?   # => Visa
```

```ruby
require 'cc_issuer'
'4444-4444-4444-4444'.cci?   # => Visa
```

Where, `cci?` refers to Credit Card Issuer?

#### These are some of the supported plugins

| Card Issuer       | Key Value |
| ------------- |:-------------:|
| Mastercard      | `:mastercard?`|
| Visa      | `:visa?`|
| Discover | `:discover?`|
| American Express | `:amex?`|
| Japan credit bureau | `:jcb?`|
| Maestro | `:maestro?` |
| DC Carte Blanche | `:dccb?` |    
| DC International | `:dci?` |
| Enroute | `:enroute?` |

##### Examples :

```ruby
require 'cc_issuer'
'4444-4444-4444-4444'.visa?   # => true
```
```ruby
require 'cc_issuer'
'4444-4444-4444-4444'.maestro?   # => false
```
> Where, 4444-4444-4444-4444 is to be replaced by your Card Number

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the Branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
