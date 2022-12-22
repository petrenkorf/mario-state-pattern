require_relative './nil'

module HasStates
  def initialize_state
    @states = {}
    @current_state = State::Nil.new
  end

  def add_initial_state(state_key, state)
    add_state state_key, state
    set_state state_key 
  end

  def add_state(state_key, state)
    @states[state_key] = state
  end

  def set_state(state_key)
    @current_state = @states[state_key]
  end
end
