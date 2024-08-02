require "crsfml"

window = SF::RenderWindow.new(SF::VideoMode.new(800, 600), "My window")

# run the program as long as the window is open
while window.open?

  while event = window.poll_event
    # "close requested" event: we close the RenderWindo
    if event.is_a? SF::Event::Closed
      window.close
    end
  end
end
