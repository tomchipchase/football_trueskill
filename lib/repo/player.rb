# coding: utf-8

module Repo
  class Player < Hold::Sequel::IdentitySetRepository
    set_model_class Model::Player
    use_table :player, id_sequence: true

    map_column :name
    map_foreign_key :true_skill, model_class: Model::TrueSkill,
                                 column_name: :true_skill_id,
                                 auto_store_new: true
  end
end
