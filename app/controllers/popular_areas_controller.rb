class PopularAreasController < ApplicationController

  def index
    recruitments_popular_area_count = Recruitment.joins(:popular_areas).group(:recruitments_id).count
    recruitments_popular_area_ids = Hash[recruitments_like_count.sort_by{ |_, v| -v }].keys
    @recruitments_area_ranking= Recruitment.where(id: recruitments_liked_ids)
  end
end
