# coding: utf-8

require 'spec_helper'

describe Repo::Match do
  let(:db) { in_memory_db }
  let(:repos) { repositories(db) }
  let(:match) { Fabricate(:match) }

  subject { repos[:match] }

  it 'has a home_team target_repo' do
    expect(subject.mapper(:home_team).target_repo).not_to be nil
  end

  it 'has an away_team target_repo' do
    expect(subject.mapper(:away_team).target_repo).not_to be nil
  end

  it 'can insert a team' do
    subject.store(match)
    expect(match.id).not_to be nil
  end
end
