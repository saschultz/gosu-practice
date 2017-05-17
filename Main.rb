require 'rubygems'
require 'gosu'


class GameWindow < Gosu::Window
  def initialize
    super(1000, 1000, false)
    self.caption = "Data is Beautiful!!"
    # @font = Gosu::Font.new(self, Gosu::default_font_name, 20)
    @background_image = Gosu::Image.new("media/space.jpg")
  end


  def draw_rect(x, y, w, h, color = 0x5033dd00)
    draw_quad x, y, color, x + w, y, color,
              x, y + h, color, x + w, y + h, color
  end

  def update
  end

  def draw
    i = 5
    j = 990
    rando = 0

    900.times do
      rando = rand(800) * -1
      draw_rect(i, j, 2, rando)
      i += 2
      # j += change
      # change *= -1
    end
    @background_image.draw(0, 0, 0)
  end
end

window = GameWindow.new
window.show


# square
# draw_rect(5, 5, 30, 30)
# nothing
# draw_rect(5, 50, 100, 0)
# covers window
# draw_rect(0, 0, 1000, 1000)
