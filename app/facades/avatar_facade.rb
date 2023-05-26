class AvatarFacade
  def get_characters(nation)
    service.get_characters(nation).map do |character_data|
      Character.new(character_data)
    end
  end

  private
  def service
    _service ||= AvatarService.new
  end
end