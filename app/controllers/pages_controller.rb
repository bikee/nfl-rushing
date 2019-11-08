class PagesController < ApplicationController
  helper_method :sort_column, :sort_direction
  before_action :players_values

  def home
    @players = @players.page(params[:page]).per(10)
  end

  def csv_export
    respond_to do |format|
      format.html
      format.csv { send_data @players.report_to_csv, filename: "players-#{Date.today}-#{Time.now.to_i}.csv" }
    end
  end

  private

  def players_values
    @players = Player.where('lower(name) LIKE ?', "%#{search_value}%").order(sort_column + " " + sort_direction)
  end
  
  def sort_column
    Player.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def search_value
    params["search"] ||= ''
    params["search"].downcase
  end

end