Rails.application.routes.draw do
  # * Página principal: muestra el login.
  root "login#index"

  # * Health check: verifica que Rails esté funcionando.
  get "up" => "rails/health#show", as: :rails_health_check
end