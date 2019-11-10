module ApplicationHelper
  def convert_ckeditor string
    return string.html_safe
  end

  def check_admin
    if current_user.admin == 2
      return true;
    end
  end

  def format created_at
      return created_at.strftime("%d-%m-%y")
  end
end
