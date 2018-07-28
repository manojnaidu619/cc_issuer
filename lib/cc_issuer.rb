require "cc_issuer/version"

class String
  def cci?
    if self =~ /[a-zA-Z[<>%\$~``!@#^&*()+=?;:{}\|''""'"]]/
         puts "Invalid Card Number"
    else
             sanitize()
             if self =~ /^4/ and self.length >= 13 and self.length <= 16
                 puts "Visa"
             elsif self =~ /^(5|2)[1-5][0-9]/ and self.length.eql?(16)
                 puts "Mastercard"
             elsif self =~ /^6[0|2|4|5][14[0-9][0-9]]/ and self.length.eql?(16)
                 puts "Discover"
             elsif self =~ /^3[4|7][0-9]/ and self.length.eql?(15)
                 puts "American Express"
             elsif self =~ /^3[5][0-9][0-9]/ and self.length >= 16 and self.length <= 19
                 puts "JCB (Japan Credit Bureau)"
             elsif self =~ /^(5|6)[0-9][0-9]/ and self.length >= 12 and self.length <= 19
                 puts "Maestro"
             elsif self =~ /^3[0|6|8][0-9][0-9]/ and self.length.eql?(14)
                  puts "Diners Club Carte Blanche"
             elsif self =~ /^3[0|9|8][0-9][0-9]/ and self.length.eql?(16)
                 puts "Diners Club International"
             elsif self =~ /^2[0|1][1|4][4|9][0-9]/ and self.length.eql?(15)
                 puts "enRoute"
             else
               puts "Invalid, Sorry"
             end
    end
  end

  def amex?
       sanitize()
       self =~ /^3[4|7][0-9]/ && self.length.eql?(15) ? true : false
  end

  def visa?
       sanitize()
       self =~ /^4/ && self.length >= 13 && self.length <= 16 ? true : false
  end

  def mastercard?
       sanitize()
       self =~ /^(5|2)[1-5][0-9]/ && self.length.eql?(16) ? true : false
  end

  def discover?
       sanitize()
       self =~ /^6[0|2|4|5][14[0-9][0-9]]/ && self.length.eql?(16) ? true : false
  end

  def jcb?
       sanitize()
       self =~ /^3[5][0-9][0-9]/ && self.length >= 16 && self.length <= 19 ? true : false
  end

  def maestro?
       sanitize()
       self =~ /^(5|6)[0-9][0-9]/ && self.length >= 12 && self.length <= 19 ? true : false
  end

  def enroute?
       sanitize()
       self =~ /^2[0|1][1|4][4|9][0-9]/ && self.length.eql?(15) ? true : false
  end

  def dccb?
       sanitize()
       self =~ /^3[0|6|8][0-9][0-9]/ && self.length.eql?(14) ? true : false
  end

  def dci?
       sanitize()
       self =~ /^3[0|9|8][0-9][0-9]/ && self.length.eql?(16) ? true : false
  end

  private

  def sanitize
    self.gsub!(/[\D\s+]/, '')
  end

end
