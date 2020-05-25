class PopularAreasController < ApplicationController

  def index
    Recruitment.group(:area).order(count_all: :desc).count
  end
end
