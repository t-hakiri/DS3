class PopularAreasController < ApplicationController

  def index
    @popular_areas = Recruitment.group(:area).order(count_all: :desc).count
  end
end