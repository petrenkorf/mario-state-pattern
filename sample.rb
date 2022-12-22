require 'gosu'
require_relative './animation'
require_relative './player'
require_relative './state/idle'
require_relative './state/walking'
require_relative './state/crouch'

class Tutorial < Gosu::Window
  def initialize
    super 640,480
    self.caption = "Tutorial"

    initialize_animations
    initialize_player
  end

  def button_down(id)
    close if id == Gosu::KbEscape
    @player.key_pressed(id)
  end

  def button_up(id)
    @player.key_released(id)
  end

  def update
    @player.update
  end

  def draw
    @player.draw
  end

  private

  def initialize_animations
    @frames            = Gosu::Image.load_tiles("res/sprite.png", 34, 48)
    @walking_animation = Animation.new(@frames[0..2], 100)
    @crouch_animation  = Animation.new(@frames[5..5], 100)
    @idle_animation    = Animation.new(@frames[0..0], 100)
  end

  def initialize_player
    @player = Player.new
    @player.add_initial_state :idle,    State::Idle.new(@idle_animation)
    @player.add_state         :walking, State::Walking.new(@walking_animation)
    @player.add_state         :crouch,  State::Crouch.new(@crouch_animation)
  end
end

Tutorial.new.show
