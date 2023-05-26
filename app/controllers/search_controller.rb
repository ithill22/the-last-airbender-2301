class SearchController < ApplicationController
  def index
    @nation = params[:nation]
    @characters = AvatarFacade.new.get_characters(@nation)
  end
end