Rails.application.routes.draw do

  ## GET - VER SOLICITUDES
  resources :solicitud_estudiantes
  resources :solicitud_profesors

  get :solicitud_profesors, to: 'solicitud_profesors#get'
  
  resources :users  ### https://www.youtube.com/watch?v=q51fdMxQ558&ab_channel=FullStackDevelopersIsrael  VIDEO TUTORIAL 
  resources :estudiantes
  resources :profesores

  ## POST - AÑADIR SOLICITUD
  post :login, to: 'auth#create'  #prueba autenticacion

  ## DELETE - ELIMINAR SOLICITUDES
  delete :solicitud_profesors, to: 'solicitud_profesors#destroy'
  delete :solicitud_estudiantes, to: 'solicitud_estudiantes#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
