Layout::Application.routes.draw do
  controller :samples do
    get :index
    get :show
    get :edit
    get :remove
  end

  controller :inherited do
    get :index
  end

  controller :no_layout_file do
    get :index
  end
end
