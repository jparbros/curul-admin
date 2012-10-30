module UsersHelper
  
  def is_admin_image(is_admin)
    is_admin ? '/assets/true.png' : '/assets/false.png'
  end
end
