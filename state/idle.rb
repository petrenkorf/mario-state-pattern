require_relative './base'

module State
  class Idle < Base
    def key_pressed(key)
      return :crouch  if key == Gosu::KbDown
      return :walking if key == Gosu::KbRight
    end
  end
end
