# coding: utf-8

require 'spec_helper'

describe Repo::Team do
  let(:db) { in_memory_db }
  let(:repos) { repositories(db) }
  let(:team) { Fabricate(:team) }

  subject { repos[:team] }

  it 'has a player target_repo' do
    expect(subject.mapper(:players).target_repo).not_to be nil
  end

  it 'can insert a team' do
    subject.store(team)
    expect(team.id).not_to be nil
  end
end
