ActiveAdmin.register Article do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment

index do
  selectable_column
  column :id
  column :nom_fr
  column :prix
  column :category
  column :reserve
  column :vendu
  actions
end

form do |f|
  f.inputs do
    f.input :category
    f.input :nom_fr
    f.input :description_fr
    f.input :nom_en
    f.input :description_en
    f.input :prix
    f.input :vendu
    f.input :reserve
    f.input :photo_couverture, as: :file
    f.input :photos, as: :file, input_html: { multiple: true }
  end
  f.actions
end

  #
  permit_params :nom_fr, :description_fr, :nom_en, :description_en, :prix, :category_id, :vendu, :reserve, :photo_couverture, photos: []
  #
  # or
  #
  # permit_params do
  #   permitted = [:nom_fr, :description_fr, :nom_en, :description_en, :prix, :category_id, :vendu, :reserve, :couverture]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
