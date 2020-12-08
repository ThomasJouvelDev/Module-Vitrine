ActiveAdmin.register Category do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  actions :all, except: [:new, :destroy]
  permit_params :name, :photo

  index do 
    column :id
    column :name
    actions
  end
  
form do |f|
  f.inputs do
    f.input :photo, as: :file
  end
  f.actions
end

  # or
  #
  # permit_params do
  #   permitted = [:name]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
