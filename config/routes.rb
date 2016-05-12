Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "static#main"

  namespace :api do

  end

  scope :ng do
    scope :templates do
      scope "(:template_group)" do
        get ':template.tmpl', to: 'ng_templates#template'
      end
    end
  end

  get "/:page", to: "static#main"
  get "/:page_group/:page", to: "static#main"
  get "/:page_group_parent/:page_group/:page", to: "static#main"
  get "/:page_group_parent_parent/:page_group_parent/:page_group/:page", to: "static#main"

end
