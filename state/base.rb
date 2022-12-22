module State
  class Base
    def initialize(animation)
      @animation = animation
    end

    def draw
      @animation.current_sprite.draw 20, 20, 0, 4, 4
    end

    def update

    end

    def key_pressed(id)

    end

    def key_released(id)

    end
  end
end
