namespace :import do
  desc 'Import player records to player table'
  task(:player_records => :environment) do
    file = File.read(Rails.root.join('db', 'files', 'rushing.json'))
    data_hash = JSON.parse(file)
    data_hash.each do |h|
      p = Player.create!(
        name: h["Player"],
        team: h["Team"],
        pos: h["Pos"],
        att: h["Att"],
        att_g: h["Att/G"],
        yds: h["Yds"],
        avg: h["Avg"],
        yds_g: h["Yds/G"],
        td: h["TD"],
        lng: h["Lng"],
        first: h["1st"],
        first_perc: h["1st%"],
        plus_20: h["20+"],
        plus_40: h["40+"],
        fum: h["FUM"]
      )
      puts p.id
    end
  end
end