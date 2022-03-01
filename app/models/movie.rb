class Movie < ActiveRecord::Base

    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
      end

      def self.create_with_title(title)
            Movie.create(title: title)
    end

    def find_movie_with_id(id)
        Movie.where(id: id)
    end

    def self.first_movie
        Movie.first
    end

    def self.update_all_titles(title)
        Movie.update(title: title)
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
     Movie.movie.count
    end

    def self.find_movies_after_2002
        Movie.where("release_date>'2002'")
    
    end

    def self.movie_count
        Movie.count
    end
   
    def self.update_with_attributes(id, arg: "arg2")
        Movie.update(id, arg: "arg2")
    end



end 