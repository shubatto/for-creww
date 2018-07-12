Rails.application.routes.draw do
	resources :inquiries, only: [:new, :create] do
		collection do
			post 'confirm'
			get 'complete'
		end
	end
	root to: 'inquiries#new'
end
