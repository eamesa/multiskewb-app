class ApplicationController < ActionController::Base

  def home
    render ({:template => "home.html.erb"})
  end

def target
  @colors = ["red", "blue", "orange", "green", "red"]
  @target_input = params.fetch("home_input").to_i

  @gregs_target = ["🔳", "🟦", "🟧", "🟩", "🟥"]

  @target_input.times do #iterates rotations to define starting state of @gregs_target
    @gregs_target[0], @gregs_target[1], @gregs_target[2], @gregs_target[3], @gregs_target[4]  = 
    @gregs_target[0], @gregs_target[4], @gregs_target[1], @gregs_target[2], @gregs_target[3]
  end

  render ({:template => "target.html.erb"})
end

def state
  @colors = ["red", "blue", "orange", "green", "red"]
  @target_input = params.fetch("home_input").to_i

  @gregs_target = ["🔳", "🟦", "🟧", "🟩", "🟥"]

  @target_input.times do #iterates rotations to define starting state of @gregs_target
    @gregs_target[0], @gregs_target[1], @gregs_target[2], @gregs_target[3], @gregs_target[4]  = 
    @gregs_target[0], @gregs_target[4], @gregs_target[1], @gregs_target[2], @gregs_target[3]
  end
  
@back = params.fetch("back").to_s
@top_right = params.fetch("top_right").to_s
@bottom_right = params.fetch("bottom_right").to_s
@bottom_left = params.fetch("bottom_left").to_s
@top_left = params.fetch("top_left").to_s

@gregs_state = [@back, @top_right, @bottom_right, @bottom_left, @top_left]


  render ({:template => "state.html.erb"})
end


end
