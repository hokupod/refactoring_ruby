require 'spec_helper'
require 'rspec-power_assert'
require_relative '../../1st_chapter/movie'

describe Movie do

  describe '#charge' do
    context 'rent REGULAR Movie' do
      let(:movie) { Movie.new 'regular_movie', 0 }

      it 'for 2days' do
        is_asserted_by { movie.charge(2) == 2 }
      end
      it 'for 6days' do
        is_asserted_by { movie.charge(6) == 8 }
      end
    end

    context 'rent NEW_RELEASE Movie' do
      let(:movie) { Movie.new 'new_movie', 1 }

      it 'for 2days' do
        is_asserted_by { movie.charge(2) == 6 }
      end
      it 'for 6days' do
        is_asserted_by { movie.charge(6) == 18 }
      end
    end

    context "rent CHIDREN'S Movie" do
      let(:movie) { Movie.new 'children_movie', 2 }

      it 'for 2days' do
        is_asserted_by { movie.charge(2) == 1.5 }
      end
      it 'for 6days' do
        is_asserted_by { movie.charge(6) == 6 }
      end
    end
  end
end