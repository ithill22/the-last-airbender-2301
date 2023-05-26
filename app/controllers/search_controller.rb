class SearchController < ApplicationController
  def index
    @nation = AvatarFacade.new(params[:nation])
  end
end