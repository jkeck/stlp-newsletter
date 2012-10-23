module ApplicationHelper
  
  def link_to_modal(text, path, id)
    link_to text, path, :role=>"button", :class=>"btn", :"data-toggle"=>"modal", :"data-modal-id" => id
  end
  
  def render_newsletter
    begin
      render :partial => "newsletters/custom/stlp_#{@newsletter.year}_#{@newsletter.session}"
    rescue ActionView::MissingTemplate
      render "newsletters/custom/default"
    end
  end
  
end
