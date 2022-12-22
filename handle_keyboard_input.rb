module HandleKeyboardInput
  def key_pressed(id)
    new_state = @current_state.key_pressed(id)
    set_state(new_state) unless new_state.nil? 
  end

  def key_released(id)
    new_state = @current_state.key_released(id)
    set_state(new_state) unless new_state.nil? 
  end
end
