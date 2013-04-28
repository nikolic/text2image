class Text2Image < ActiveRecord::Base
  require 'RMagick'
  attr_accessible :text, :url


  def create_image(text)
	canvas = Magick::Image.new(300, 100){self.background_color = 'none'}
    gc = Magick::Draw.new
    gc.pointsize(25)
    gc.text(30,70, text.center(14))

    gc.draw(canvas)
    filename = "#{Time.now.to_i.to_s}.png"
    path = "app/assets/images/test/#{filename}"
   # canvas.blur=2 
    canvas.write(path)

    self.url = filename
  end

end
