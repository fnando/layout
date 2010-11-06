Layout::Application.routes.draw do
  controller :samples do
    get :index
    get :show
    get :edit
  end
end
