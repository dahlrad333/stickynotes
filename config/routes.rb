Rails.application.routes.draw do
  root 'main#index'
  
  get 'main/index'

  get 'main/add'

  get 'main/addConfirm'

  post 'main/delete/:id' => 'main#delete'

  get 'main/edit'

  get 'main/editConfirm'

  get 'main/updatePos'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
