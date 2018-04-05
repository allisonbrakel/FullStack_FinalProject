ActiveAdmin.register Order do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
#
  permit_params :total, :subtotal, :gst, :pst, :hst, :user_id, :status,
                product_orders_attributes: [:id, :order_id, :product_id, :price, :quantity, :_destroy]

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs "Order" do
      f.input :status
      f.input :total
      f.input :subtotal
      f.input :gst
      f.input :pst
      f.input :hst
      f.input :customer
      f.has_many :product_orders, allow_destroy: true do |n_f|
        n_f.input :product
      end
    end

    f.actions
  end

end
