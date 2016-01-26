class Rental
  attr_reader :movie, :days_rented

  def initialize(movie, days_rented)
    @movie, @days_rented = movie, days_rented
  end

  def charge
    movie.charge(@days_rented)
  end

  def frequent_renter_points
    # 新作2日間レンタルでボーナスポイントを加算
    movie.frequent_renter_points(@days_rented)
  end
end