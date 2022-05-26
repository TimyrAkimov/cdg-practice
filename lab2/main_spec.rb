require 'rspec'

require_relative 'lab2_akimov'

RSpec.describe "greetings" do

  it "do ok for <18" do

    str = "Hello, Timyr Akimov! You are younger then 18, but you can start programming just now!"

    [1,2,3,4,5,8,9,12,18].each do |value|

     RSpec.expect(greetings("Timyr", "Akimov", value)).to eq str

    end

  end

  it "do wrong for >18" do

    str = "Hello, Timyr Akimov! You are younger then 18, but you can start programming just now!"

    [19, 33, 44, 55].each do |value|

     RSpec.expect(greetings("Timyr", "Akimov", value)).to eq str

    end

  end

end

RSpec.describe "foobar" do

  it "do incorrect fo a or b = 20" do
     
     RSpec.expect(foobar(20, 15)).to eq "35"

  end 

end