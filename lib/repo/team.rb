# coding: utf-8

module Repo
  class Team < Hold::Sequel::IdentitySetRepository
    set_model_class Model::Team
    use_table :team, id_sequence: true

    map_many_to_many :players, model_class: Model::Player,
                               join_table: :team_player, left_key: :team_id,
                               right_key: :player_id, writable: true
  end
end
