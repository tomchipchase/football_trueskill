# coding: utf-8

require 'thin_models/struct/identity'

module Model
  class Match < ThinModels::Struct
    identity_attribute

    attribute :home_team
    attribute :away_team
    attribute :home_score
    attribute :away_score
    attribute :processed
  end
end
