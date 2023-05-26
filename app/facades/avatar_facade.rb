class AvatarFacade
  def self.get_members(nation)
    service.get_characters(nation)
  end

  def self.get_total_members(nation)
    service.get_characters(nation).count
  end

  private

  def self.service
    @_service ||= AvatarService.new
  end
end
  