# coding: utf-8

module Action
  class PlayerCreator
    def initialize(player_repo)
      @player_repo = player_repo
    end

    def create(options = {})
      name = options.fetch(:name)
      player = Model::Player.new(name: name)
      @player_repo.store(player)
    end
  end
end
