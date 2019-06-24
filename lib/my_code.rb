def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  return new
end

def reduce(source_array, starting_point = 0)
  new = 0
  i = 0
  if source_array[i].class == Integer
    while i < source_array.length do
      new += source_array[i]
      i += 1
    end
  yield(new, starting_point)
  else
    yield() #fix
  end
end
