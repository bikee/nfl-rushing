class Player < ApplicationRecord
  require "CSV"

  def self.report_to_csv(options = {})
    # Generated CSV file with new report output
    CSV.generate(options) do |csv|
      csv.add_row %w(Player Team Pos Att Att/G Yds Avg Yds/G TD Lng 1st 1st% 20+ 40+ FUM)
      all.each do |user|
        values = user.attributes.values
        csv.add_row values[1..15]
      end
    end
  end
end