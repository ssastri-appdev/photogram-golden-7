Rails.application.routes.draw do

get("", {:controller => "pictures", :action =>"index"})
get("/photos", {:controller => "pictures", :action =>"index"})

get("/photos/new", {:controller => "pictures", :action =>"new_form"})
get("/photos/create_photo", {:controller => "pictures", :action =>"create_row"})
get("/photos/:id_num_one", {:controller => "pictures", :action =>"show_details"})
get("/photos/:id_num_two/edit", {:controller => "pictures", :action =>"edit_row"})
get("/update_photo/:id_num_three", {:controller => "pictures", :action =>"show_update"})
get("delete_photo/:id_num_four", {:controller => "pictures", :action =>"delete_row"})

 
 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
