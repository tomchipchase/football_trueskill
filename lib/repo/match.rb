# coding: utf-8

module Repo
  class Match < Hold::Sequel::IdentitySetRepository
    set_model_class Model::Match
    use_table :match, id_sequence: true

    map_column :home_score
    map_column :away_score
    map_column :processed

    map_foreign_key :home_team, column_name: :home_team_id,
                                model_class: Model::Team,
                                auto_store_new: true
    map_foreign_key :away_team, column_name: :away_team_id,
                                model_class: Model::Team,
                                auto_store_new: true
  end
end
