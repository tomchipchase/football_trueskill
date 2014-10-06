# coding: utf-8

require 'spec_helper'

describe Action::PlayerCreator do
  let(:player_repo) { double(:player_repo) }
  subject { described_class.new(player_repo) }

  it 'will store a player in the player repo' do
    expect(player_repo).to receive(:store).with(kind_of(Model::Player))
    subject.create(name: Faker.name)
  end

  it 'will error if no name is given' do
    expect { subject.create }.to raise_error
  end
end
