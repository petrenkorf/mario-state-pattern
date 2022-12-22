require_relative './state/has_states'
require_relative './handle_keyboard_input'

class Player
  include HasStates
  include HandleKeyboardInput # Needs HasStates

  def initialize
    initialize_state
  end

  def draw
    @current_state.draw
  end

  def update
    @current_state.update
  end
end
