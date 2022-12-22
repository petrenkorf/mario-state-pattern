require_relative './base'

module State
  class Walking < Base
    def key_pressed(key)
      :crouch if key == Gosu::KbDown
    end

    def key_released(key)
      :idle if key == Gosu::KbRight
    end
  end
end
