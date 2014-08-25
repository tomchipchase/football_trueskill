# coding: utf-8

require 'thin_models/struct/identity'

module Model
  class Player < ThinModels::Struct
    identity_attribute
    attribute :name
    attribute :true_skill
  end
end
