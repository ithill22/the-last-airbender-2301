class AvatarFacade
  def get_members(nation)
    json = service.get_characters(nation)
    json.map do |character_data|
      Character.new(character_data)
    end
  end

  private
  def service
    @_service ||= AvatarService.new
  end
end
  