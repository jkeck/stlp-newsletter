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
  
  def render_default_header
    <<-html
      <div class="row session-details">
        <div class="span2">Session #{ @newsletter.session }</div>
        <div class="span2 offset8">#{ @newsletter.dates }</div>
      </div>
      <div class="row title">
        <div class="span12">
          <h1>
            <span class="hidden-phone">Stanford Technical Leadership Program</span>
            <span class="visible-phone">STLP</span>
          </h1>
        </div>
      </div>
      <div class="row byline">
        <div class="span12">
          <h2>
            <span class="hidden-phone">Session follow up note</span>
            <span class="visible-phone">Follow up</span>
          </h2>
        </div>
      </div>
    html
  end
  
end
