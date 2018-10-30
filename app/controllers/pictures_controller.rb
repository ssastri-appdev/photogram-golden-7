class PicturesController < ApplicationController
   
    def index
    @photo_list=Photo.all
    render("pic_templates/all_photos.html.erb")
    end
    
    def new_form
    render("pic_templates/enter_new_photo.html.erb")
    end
    
    def create_row
    render("pic_templates/show_new_photo.html.erb")
    end
     
    def show_details
    render("pic_templates/show_photo_details.html.erb")
    end
    
    def edit_row
    render("pic_templates/edit_a_photo.html.erb")
    end
    
    def show_update
    render("pic_templates/show_photo_update.html.erb")
    end
    
    def delete_row
    render("pic_templates/photo_delete.html.erb")
    end
    
end
