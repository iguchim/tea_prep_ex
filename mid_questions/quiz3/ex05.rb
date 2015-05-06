# How could the unnecessary duplication in this method be removed?
def color_valid
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# improved
def color_valid
  color == "blue" || color == "green"
end