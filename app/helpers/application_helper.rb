module ApplicationHelper
  
  def link_to_modal(text, path, id)
    link_to text, path, :role=>"button", :class=>"btn", :"data-toggle"=>"modal", :"data-modal-id" => id
  end
  
end
