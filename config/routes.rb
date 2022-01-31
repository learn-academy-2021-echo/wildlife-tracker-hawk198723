Rails.application.routes.draw do
    get 'animals' => 'animal#index', as: 'animals'
    get 'animals/new' => 'animal#new', as: 'new_animal'
    get 'animals/:id' => 'animal#show', as: 'animal'
    post 'animals' => 'animal#create'
    delete 'animals/:id' => 'animal#destroy', as: 'delete_animal'
    get 'animals/:id/edit' => 'animal#edit', as: 'edit_animal'
    patch 'animals/:id' => 'animal#update'
end
