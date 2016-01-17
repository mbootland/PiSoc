module ProjectsHelper
  def author project
    "Posted by " + project.first_name.to_s + " " + project.last_name.to_s + " at " + project.created_at.to_s 
  end
end
