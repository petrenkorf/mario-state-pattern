require_relative './base'

module State
  class Crouch < Base
    def key_released(key)
      :idle if key == Gosu::KbDown
    end
  end
end
