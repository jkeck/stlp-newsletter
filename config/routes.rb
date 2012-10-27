StlpNewsletter::Application.routes.draw do
  resources :carousels

  resources :further_readings

  resources :main_contents

  resources :misc_contents

  resources :key_points

  resources :assignments

  resources :quotes

  resources :next_steps

  resources :newsletters
  
  match 'stlp-:year(/:session)' => "newsletters#find", :as => "newsletter_find"

  root :to => 'newsletters#index'

end
