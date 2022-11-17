ActiveAdmin.register RcCar do
    permit_params :content, :published, :user_id, :car_image

    form html: { multipart: true } do |f|
      f.inputs "Rc Car" do
        f.input :name
        f.input :description
        f.input :make
        f.input :model 
        f.input :category
        f.input :car_image, as: :file
      
      end
  
      f.actions
    end
  
    show do
      attributes_table do
        row :name 
        row :description 
        row :make 
        row :model 
        row :category
        row :car_image do |ad|
            image_tag url_for(ad.car_image)
        end
    end
end
end
