require 'thin_models/struct/identity'
require 'hold'
require 'hold/sequel'

def repositories(db)
  true_skill  = Repo::TrueSkill.new(db)
  player = Repo::Player.new(db)
  team = Repo::Team.new(db)
  match = Repo::Match.new(db)

  player.mapper(:true_skill).target_repo = true_skill
  team.mapper(:players).target_repo = player
  match.mapper(:home_team).target_repo = team
  match.mapper(:away_team).target_repo = team

  { true_skill: true_skill, player: player, team: team, match: match }
end
