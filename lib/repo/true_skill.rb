# coding: utf-8

module Repo
  class TrueSkill < Hold::Sequel::IdentitySetRepository
    set_model_class Model::TrueSkill
    use_table :true_skill, id_sequence: true

    map_column :rating
    map_column :deviation
    map_column :volatility
  end
end
