# coding: utf-8

Fabricator(:team, class_name: :'Model::Team') do
  players { 5.times.map { Fabricate(:player) } }
end

