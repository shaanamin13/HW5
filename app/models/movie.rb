class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 R)
  end




def self.find_in_tmdb(movie)
    
      srch = nil
         
	 Tmdb::Api.key('f4702b08c0ac6ea5b51425788bb26562')
    
         srch = Tmdb::Movie.find(movie)

    	  array1 = Array.new
    
	if !srch.nil? || !srch.empty?

   	  srch.each do |movie|
       		 array1.push({:tmdb_id => movie.id, :title => movie.title, :rating => 'PG', :release_date => movie.release_date})
     	 end
  
       end

  return array1

end

  def self.create_from_tmdb(tmdb_ids)

    tmdb_ids.each_key do |id|

      movie = Tmdb::Movie.detail(id)
      Movie.create!(:title => movie.title, :rating => 'PG', :release_date => movie.release_date, :description => movie.overview)
    end
  end
end
