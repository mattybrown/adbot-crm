module ApplicationHelper

  def get_username_by_id(id)
    u = User.find(id)
    return u.first_name
  end

  def sidebar_class(page)
    if current_page?(page)
      return "nav-link py-3 border-bottom active"
    else
      return "nav-link py-3 border-bottom"
    end
  end

end
