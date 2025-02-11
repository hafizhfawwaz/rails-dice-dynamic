Rails.application.routes.draw do
  get("/", {:controller => "home", :action => "print_homepage"})
  get("/dice/:throws/:sides", {:controller => "dynamic", :action => "throw_dice"})
end
