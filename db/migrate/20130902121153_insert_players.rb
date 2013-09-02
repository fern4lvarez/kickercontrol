class InsertPlayers < ActiveRecord::Migration
  def up
    Player.create(name: 'Philipp', surname: 'Strube', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/philipp-33d5c094fe0c39ebc127697f059589ee.jpg', email: 'pst@cloudcontrol.de')
    Player.create(name: 'Mateusz', surname: 'Korszun', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/mateusz-f9978b2a61fff7ff020e37aaa935b3c2.jpg', email: 'mk@cloudcontrol.de')
    Player.create(name: 'Robert', surname: 'Mischuda', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/robert-3416a1aa816f94969af7425ac967be58.jpg', email: 'rm@cloudcontrol.de')
    Player.create(name: 'Fernando', surname: 'Álvarez', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/fernando-fde2915faf4f821d270f51b2dbfd6844.jpg', email: 'fa@cloudcontrol.de')
    Player.create(name: 'Henning', surname: 'Paulke', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/henning-5f6f34e163661ac769c7bedc4f4a7249.jpg', email: 'hp@cloudcontrol.de')
    Player.create(name: 'Felix', surname: 'Knoepke', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/felix-23cc883c381e36ec2667206c12eb2e3f.jpg', email: 'fk@cloudcontrol.de')
    Player.create(name: 'Sebastian-Hendrik', surname: 'Picklum', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/sebastian-f1b390d05c1c6816302109f9944eb278.jpg', email: 'shp@cloudcontrol.de')
    Player.create(name: 'Peter', surname: 'Elsayeh', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/peter-1077aed88f8787ecbc78239a61f62e05.jpg', email: 'pe@cloudcontrol.de')
    Player.create(name: 'Claudi', surname: 'Leihener', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/claudia-3567a221ead74c1aa8e12214b9f0b36b.jpg', email: 'cl@cloudcontrol.de')
    Player.create(name: 'Tobias', surname: 'Wilken', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/tobias-5b0d7ff4d131beb92c452eb50244e06a.jpg', email: 'tw@cloudcontrol.de')
    Player.create(name: 'Thomas', surname: 'Ruland', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/thomas-2f4fb191ebdb984f9389d1f74e82fe22.jpg', email: 'tr@cloudcontrol.de')
    Player.create(name: 'Stefan', surname: 'Friesel', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/stefan-43b29cde9fcf2520aa7fed5f3ef15e55.jpg', email: 'sf@cloudcontrol.de')
    Player.create(name: 'Dimitris', surname: 'Verraros', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/dimitris-38e2d19f9f94e534265e5f02b4370a18.jpg', email: 'dv@cloudcontrol.de')
    Player.create(name: 'Liz', surname: 'Osterloh', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/liz-54700af8c3379a4d91ad1660b6e19529.jpg', email: 'lo@cloudcontrol.de')
    Player.create(name: 'Anna', surname: 'Traussnig', password: '', photo_url: 'https://www.cloudcontrol.com/assets/team/anna-c40691174e502f0a4a7850fbace7f780.jpg', email: 'at@cloudcontrol.de')
  end

  def down
    Player.delete_all
  end
end
