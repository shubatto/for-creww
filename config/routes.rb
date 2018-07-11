Rails.application.routes.draw do
  # get 'inquiries/new'
  get '/inquiries', to: 'inquiries#new'
	post '/inquiries', to: 'inquiries#create'
end
