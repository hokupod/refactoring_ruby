require 'spec_helper'
require 'rspec-power_assert'
require_relative '../../1st_chapter/customer'

describe Customer do

  let(:movie)    { Movie.new('regular_movie', 0) }
  let(:rental)   { Rental.new(movie, 2) }
  let(:customer) { Customer.new 'John' }

  before { customer.add_rental rental }

  describe '#statement' do

    subject { customer.statement }
    it 'include name' do
      is_expected.to include 'John'
    end

    it 'include Movie Title and Charge' do
      is_expected.to include "\tregular_movie2\n"
    end

    it 'include Total-Charge and Total-Points' do
      is_expected.to include 'Amount owed is 2'
      is_expected.to include 'You earned 1 frequent renter points'
    end
  end
end