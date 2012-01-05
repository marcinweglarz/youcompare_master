ActiveAdmin.register AdminUser do
#
#
# @reference http://net.tutsplus.com/tutorials/ruby/create-beautiful-administration-interfaces-with-active-admin/
#
#

  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end
end

