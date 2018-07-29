RSpec.describe CcIssuer do
  it "has a version number" do
    expect(CcIssuer::VERSION).not_to be nil
  end
end

RSpec.describe String do
  context "Testing only methods and their Presence" do
      string = String.new
        it "checks for string class" do
          expect(string).to be_instance_of String
        end

        it "Checks for methods, could be applied?" do
          expect(string).to respond_to (:gsub!)
        end

        it "checks for Invalid Card Number" do
          expect([0-9]).not_to match /[a-zA-Z[<>%\$~``!@#^&*()+=?;:{}\|''""'"]]/
        end

        it "checks presence of sanitize method in private declaration" do
          expect {string.sanitize}.to raise_error(NoMethodError)
        end
    end
end

RSpec.describe String do
  context "Testing for Regex functions" do
    string = String.new
    it "checks for Visa" do
      expect {string.sanitize}.to raise_error(NoMethodError)
      expect(string.visa?).not_to be_nil
    end

    it "checks for American Express" do
      expect {string.sanitize}.to raise_error(NoMethodError)
      expect(string.amex?).not_to be_nil
    end

    it "checks for Mastercard" do
      expect {string.sanitize}.to raise_error(NoMethodError)
      expect(string.mastercard?).not_to be_nil
    end

    it "checks for Discover" do
      expect {string.sanitize}.to raise_error(NoMethodError)
      expect(string.discover?).not_to be_nil
    end

    it "checks for Jcb" do
      expect {string.sanitize}.to raise_error(NoMethodError)
      expect(string.jcb?).not_to be_nil
    end

    it "checks for Maestro" do
      expect {string.sanitize}.to raise_error(NoMethodError)
      expect(string.maestro?).not_to be_nil
    end

    it "checks for Enroute" do
      expect {string.sanitize}.to raise_error(NoMethodError)
      expect(string.enroute?).not_to be_nil
    end

    it "checks for DCCB" do
      expect {string.sanitize}.to raise_error(NoMethodError)
      expect(string.dccb?).not_to be_nil
    end

    it "checks for DCI" do
      expect {string.sanitize}.to raise_error(NoMethodError)
      expect(string.dci?).not_to be_nil
    end
  end
end

RSpec.describe String do
  string = String.new
  it "verifies presence of private method(sanitize)" do
     expect{string.sanitize}.to raise_error(NoMethodError)
  end
end
