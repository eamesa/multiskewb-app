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



end
