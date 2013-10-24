require 'spec_helper'

describe Movie do

        describe 'Check valid movie model' do 

                it 'Should respond to find_in_tmdb method in movie model' do 
                        Movie.should respond_to :find_in_tmdb
                end


                it 'Should respond to a create_fr om_tmdb method in movie model.' do 
                        Movie.should respond_to :create_from_tmdb
                end

	end
        end

