# coding: utf-8

require 'spec_helper'

describe Repo::Player do
  let(:db) { in_memory_db }
  let(:repos) { repositories(db) }
  let(:player) { Fabricate(:player) }

  subject { repos[:player] }

  it 'has a true_skill target_repo' do
    expect(subject.mapper(:true_skill).target_repo).not_to be nil
  end

  it 'can insert a player' do
    subject.store(player)
    expect(player.id).not_to be nil
  end
end
