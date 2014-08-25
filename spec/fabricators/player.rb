# coding: utf-8

Fabricator(:player, class_name: :'Model::Player') do
  name Faker::Name.name
  true_skill { Fabricate(:true_skill) }
end
