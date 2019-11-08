Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Landing page setup
  root "pages#home"
  get 'csv_export', :to => 'pages#csv_export', :as => :csv_export_report

end
