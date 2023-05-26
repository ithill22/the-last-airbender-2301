class SearchController < ApplicationController
  def index
    @nation = params[:nation]
    @characters = AvatarFacade.new.get_members(@nation)
  end
end