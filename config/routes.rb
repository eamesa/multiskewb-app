Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "home" })

  get("/target", { :controller => "application", :action => "target" })

end
