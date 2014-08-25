Sequel.migration do
  change do
    create_table(:league) do
      primary_key :id
    end

    create_table(:true_skill) do
      primary_key :id
      Float :rating, default: 1500.0
      Float :deviation, default: 350.0
      Float :volatility, default: 0.06
    end

    create_table(:player) do
      primary_key :id
      String      :name
      foreign_key :true_skill_id, :true_skill
    end

    create_table(:team) do
      primary_key :id
    end

    create_table(:team_player) do
      foreign_key :team_id, :team
      foreign_key :player_id, :player
      index [:team_id, :player_id], unique: true
    end

    create_table(:match) do
      primary_key :id
      foreign_key :home_team_id, :team
      Integer     :home_score
      foreign_key :away_team_id, :team
      Integer     :away_score
      Boolean     :processed, default: false
    end
  end
end
