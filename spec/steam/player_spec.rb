require 'spec_helper'

describe Steam::Player do
  describe '.owned_games' do
    it 'should allow users to retrieve a list of games' do
      Steam::Player.owned_games(76561197993276293)
        .should_not be_nil
    end

    it 'should allow users to retrieve a list of games' do
      Steam::Player.owned_games(76561197993276293)
        .should have_key('game_count')
    end

    it 'should allow users to retrieve a list of games' do
      Steam::Player.owned_games(76561197993276293)
        .should have_key('games')
    end
  end

  describe '.recently_played_games' do
    it 'should allow users to list a players recent games' do
      Steam::Player.recently_played_games(76561197993276293)
        .should_not be_nil
    end

    it 'should allow users to list a players recent games' do
      Steam::Player.recently_played_games(76561197993276293)
        .should have_key 'total_count'
    end

    it 'should allow users to list a players recent games' do
      Steam::Player.recently_played_games(76561197993276293)
        .should have_key 'games'
    end
  end

  describe '.steam_level' do
    it 'should allow users to retrieve a users steam level' do
      Steam::Player.steam_level(76561197993276293)
        .should_not be_nil
    end

    it 'should allow users to retrieve a users steam level' do
      Steam::Player.steam_level(76561197993276293)
        .should be_a(Fixnum)
    end
  end

  describe '.badges' do
    it 'should allow a user to retrieve badges for a player' do
      Steam::Player.badges(76561197993276293)
        .should_not be_nil
    end

    it 'should allow a user to retrieve badges for a player' do
      Steam::Player.badges(76561197993276293)
        .should have_key 'badges'
    end

    it 'should allow a user to retrieve badges for a player' do
      Steam::Player.badges(76561197993276293)
        .should have_key 'player_level'
    end

    it 'should allow a user to retrieve badges for a player' do
      Steam::Player.badges(76561197993276293)
        .should have_key 'player_xp'
    end

    it 'should allow a user to retrieve badges for a player' do
      Steam::Player.badges(76561197993276293)
        .should have_key 'player_xp_needed_current_level'
    end

    it 'should allow a user to retrieve badges for a player' do
      Steam::Player.badges(76561197993276293)
        .should have_key 'player_xp_needed_to_level_up'
    end
  end

  describe '.community_badge_progress' do
    it 'should allow a user to retrieve community badge info for a player' do
      Steam::Player.community_badge_progress(76561197993276293)
        .should_not be_nil
    end

    it 'should allow a user to retrieve community badge info for a player' do
      quest = Steam::Player.community_badge_progress(76561197993276293).first
      quest.should have_key 'questid'
      quest.should have_key 'completed'
    end
  end
end
