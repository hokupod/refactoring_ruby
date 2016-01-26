require 'spec_helper'
require 'rspec-power_assert'
require_relative '../../1st_chapter/rental'

describe Rental do

  let(:movie) { Movie.new 'regular_movie', 0 }
  describe '#frequent_renter_points' do
    context 'rent REGULAR movie' do
      let(:rental) { Rental.new movie, 2 }

      it 'for 2days' do
        is_asserted_by { rental.frequent_renter_points == 1 }
      end
    end

    context 'rent NEW_RELEASE movie' do
      let(:new_movie) { Movie.new 'new_movie', 1 }
      let(:rental) { Rental.new new_movie, 2 }

      it 'for 2days' do
        is_asserted_by { rental.frequent_renter_points == 2 }
      end
    end
  end
end