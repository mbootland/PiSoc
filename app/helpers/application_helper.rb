module ApplicationHelper
  def author obj
    "Posted by " + obj.first_name.to_s + " " + obj.last_name.to_s + " at " + obj.created_at.to_s 
  end
end
