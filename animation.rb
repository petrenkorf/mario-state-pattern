require 'gosu'

class Animation
  def initialize(frames, time_in_ms)
    @frames = frames
    @time_in_ms = time_in_ms
  end

  def current_sprite
    @frames[Gosu::milliseconds / @time_in_ms % @frames.size]
  end

  def stop
    @frames[0]
  end
end
