require 'spec_helper'

describe Primer do 
	before :each do 
		@primer = Primer.new
	end 

	describe "#is_prime" do 
		it "validates prime numbers " do
			expect(@primer.is_prime(2)).to eq(true)
			expect(@primer.is_prime(3)).to eq(true)
			expect(@primer.is_prime(4)).to eq(false)
			expect(@primer.is_prime(5)).to eq(true)
			expect(@primer.is_prime(6)).to eq(false)
			expect(@primer.is_prime(7)).to eq(true)

		end 


	end 

	describe "#prime_set" do 
		it 'returns an array 'do 
			expect(@primer.prime_set(0)).to be_an_instance_of(Array)
		end 

		it "array includes only prime numbers" do 
			expect(@primer.prime_set(5).include?(2)).to eq(true)
			expect(@primer.prime_set(5).include?(3)).to eq(true)
			expect(@primer.prime_set(5).include?(4)).to eq(false)
		end 
	end 
end 