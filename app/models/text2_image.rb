class Text2Image < ActiveRecord::Base
  require 'RMagick'
  attr_accessible :text, :url


  def create_image(text)
	canvas = Magick::Image.new(576, 160){self.background_color = 'none'}
    gc = Magick::Draw.new
    gc.pointsize(25)
    gc.text(10,20, text.center(14))

    gc.draw(canvas)
    canvas = canvas.blur_channel(0, 2.7, Magick::AllChannels)

    filename = "#{Time.now.to_i.to_s}.png"
    path = "app/assets/images/test/#{filename}"
    canvas.write(path)

    self.url = filename
  end

end
