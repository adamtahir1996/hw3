Rails.application.routes.draw do

  resources "places"
  get("/places", {:controller => "places", :action => "index"})
  get("/places/:new", {:controller => "places", :action => "new"})
  get("/places/:id", {:controller => "places", :action => "show"})
  post("/places/create", {:controller => "places", :action => "create"})
  
  resources "entries"
  get("entries", {:controller => "entries", :action => "index"})
  get("/entries/:new", {:controller => "entries", :action =>"new"})
  get("/entries/:id", {:controller => "entries", :action => "show"})
  post("/entries/create", {:controller => "entries", :action => "create"})

end
