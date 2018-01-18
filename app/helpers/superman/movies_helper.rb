module Superman::MoviesHelper
  def sort_by_release_date
    @movies['Search'].sort_by { |movie| movie['Year'] }
  end
end
