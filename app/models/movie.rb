class Movie < ActiveRecord::Base
  def self.get_all_ratings
    arr = []
    Movie.select(:rating).distinct.each { |m| arr << m.rating }
    arr
  end
end
