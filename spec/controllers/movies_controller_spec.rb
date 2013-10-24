require 'spec_helper'
describe MoviesController do

    describe 'Search' do        

    describe 'invalid search' do
      after :each do
        response.should redirect_to movies_path
      end
      it 'should redirect to movies_path when empty search term' do
        post :search_tmdb, { :search_terms => '' }
      end
      it 'Should redirect to movies_path when invalid search term' do
        post :search_tmdb, { :search_terms => '#$@:-)' }
      end
    end

   

  end

end        

