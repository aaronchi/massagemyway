Massagemyway::Application.routes.draw do
  
  resources :bookings, :only => [:new, :create]
  match 'about' => 'pages#about', :as => :about
  match 'services' => 'pages#services', :as => :services
  match 'booking' => 'pages#booking', :as => :booking
  match 'therapists' => 'pages#therapists', :as => :therapists
  match 'contact' => 'pages#contact', :as => :contact
  match 'policies' => 'pages#policies', :as => :policies
  root :to => "pages#index"

end
