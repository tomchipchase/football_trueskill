# coding: utf-8

module Model
  class TrueSkill < ThinModels::Struct
    identity_attribute
    attribute :rating
    attribute :deviation
    attribute :volatility
  end
end
