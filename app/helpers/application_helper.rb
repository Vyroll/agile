module ApplicationHelper

  def have(permision)
    current_admin.amenities.each do |a|
      if a == permision
        return true
      end
    end
    return false
  end

end
