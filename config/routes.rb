Rails.application.routes.draw do

  get("/", { :controller => "application", :action => "home" })

  get("/target", { :controller => "application", :action => "target" })

  get("/state", { :controller => "application", :action => "state" })
end
