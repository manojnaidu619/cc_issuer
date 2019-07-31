# CC_issuer

[![Build Status](https://travis-ci.org/manojnaidu619/cc_issuer.svg?branch=master)](https://travis-ci.org/manojnaidu619/cc_issuer)
[![Coverage Status](https://coveralls.io/repos/github/manojnaidu619/cc_issuer/badge.svg?branch=master)](https://coveralls.io/github/manojnaidu619/cc_issuer?branch=master)
[![Gem Version](https://badge.fury.io/rb/cc_issuer.svg)](https://badge.fury.io/rb/cc_issuer)
[![Gem](https://img.shields.io/gem/v/cc_issuer.svg?style=flat)](http://rubygems.org/gems/cc_issuer "View this project in Rubygems")

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://github.com/manojnaidu619/cc_issuer/pulls) [![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/manojnaidu619)

A gem to find out issuer of the credit card just by entering the Card Number. Currently supports..

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/1200px-Mastercard-logo.svg.png" heigth="100px" width="100px" style="float: right;" /> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Visa.svg/1200px-Visa.svg.png" heigth="100px" width="100px" style="float: right;"/> <img src="https://securecdn.pymnts.com/wp-content/uploads/2014/03/Discover-logo-e1416429693676.jpg" heigth="100px" width="100px" style="float: right;"/> <img src="https://www.underconsideration.com/brandnew/archives/american_express_logo_wordmark_detail.png" heigth="200px" width="100px" style="float: right;"/> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/JCB_logo.svg/1200px-JCB_logo.svg.png" heigth="100px" width="100px" style="float: right;" /> <img src="https://www.datatrans.ch/userobjects/4503_3636_ms_acc.png" heigth="100px" width="100px" style="float: right;" /> <img src="http://www.extrapackofpeanuts.com/wp-content/uploads/2013/03/carte-blanche-logo.jpg" heigth="100px" width="100px" style="float: right;"/> <img src="https://vignette.wikia.nocookie.net/logopedia/images/2/28/DinersClub1950.png/revision/latest?cb=20171213151438" heigth="100px" width="100px" style="float: right;"/> <img src="https://cdn.freebiesupply.com/logos/large/2x/enroute-card-logo-png-transparent.png" heigth="100px" width="100px" style="float: right;"/>


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

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](https://github.com/manojnaidu619/cc_issuer/pulls)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
