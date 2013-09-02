class InsertPlayers < ActiveRecord::Migration
  def up
    Player.create(name: 'Mateusz', password: '')
    Player.create(name: 'Dimitris', password: '')
    Player.create(name: 'Fernando', password: '')
    Player.create(name: 'Robert', password: '')
    Player.create(name: 'Tobias', password: '')
    Player.create(name: 'Peter', password: '')
    Player.create(name: 'Henning', password: '')
    Player.create(name: 'Thommas', password: '')
  end

  def down
    Player.delete_all
  end
end
