class PicturesController < ApplicationController
   
    def index
    @photo_list=Photo.all
    
     render("pic_templates/all_photos.html.erb")

    end
    
    def new_form
        render("pic_templates/enter_new_photo.html.erb")
    end
    
    def create_row
    p=Photo.new
    p.source=params.fetch("the_source")
    p.caption=params.fetch("the_caption")
    p.save
    @photo_list=Photo.all
    n=@photo_list.length
    redirect_to("https://photogram-ssastri.c9users.io/photos")
    
    end
     
    def show_details
    the_id=params.fetch("id_num_one")
    the_photo = Photo.find(the_id)
    @photo_source=the_photo.source
    @photo_caption=the_photo.caption
    render("pic_templates/show_photo_details.html.erb")
    end
    
    def edit_row
    the_id=params.fetch("id_num_two")
    the_pho = Photo.find(the_id)
    @photo_source=the_pho.source
    @photo_caption=the_pho.caption
    @photo_id=the_pho.id
    render("pic_templates/edit_a_photo.html.erb")
    end
    
    def show_update
    the_id=params.fetch("id_num_three")
    pho_ud = Photo.find(the_id)
    pho_ud.source=params.fetch("the_source")
    pho_ud.caption=params.fetch("the_caption")
    pho_ud.save
    @photo_source=pho_ud.source
    @photo_caption=pho_ud.caption
    redirect_to("https://photogram-ssastri.c9users.io/photos/#{the_id}")

    # render("pic_templates/show_photo_update.html.erb")
    end
    
    def delete_row
    the_id=params.fetch("id_num_four")
    the_photo = Photo.find(the_id)
    the_photo.destroy
    redirect_to("https://photogram-ssastri.c9users.io/photos")
    #render("pic_templates/photo_delete.html.erb")
    end
    
end
