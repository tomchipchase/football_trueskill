# coding: utf-8

require 'thin_models/struct/identity'

module Model
  class Team < ThinModels::Struct
    identity_attribute
    attribute :players
  end
end
