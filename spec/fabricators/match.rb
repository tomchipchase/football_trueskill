# coding: utf-8

Fabricator(:match, class_name: :'Model::Match') do
  home_team { Fabricate(:team) }
  away_team { Fabricate(:team) }
  home_score { Faker::Number.digit }
  away_score { Faker::Number.digit }
  processed false
end

