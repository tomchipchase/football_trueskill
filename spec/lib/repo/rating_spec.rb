# coding: utf-8

require 'spec_helper'

describe Repo::TrueSkill do
  let(:db) { in_memory_db }
  let(:true_skill) { Fabricate(:true_skill) }
  let(:repos) { repositories(db) }

  subject { repos[:true_skill] }

  it 'can insert a true skill ranking' do
    subject.store(true_skill)
    expect(true_skill.id).not_to be nil
  end
end
