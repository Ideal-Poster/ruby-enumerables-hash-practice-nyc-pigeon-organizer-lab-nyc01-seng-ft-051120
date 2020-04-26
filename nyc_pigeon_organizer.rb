require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  depth_history = []
  view = data
  
  # drill down until you reach value that cannot be nested
  while view.class == Array || Hash do
    
    if view.class == Hash
      depth_history << view.first[0]
      view = view.first[1]
    else
      # depth_history << view.first
      view = view.first
    end
    
  end
  binding.pry

end
