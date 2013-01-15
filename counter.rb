class Counter < Hash

  def add(index)
    if self[index]
      self[index] += 1
    else
      self[index] = 1
    end

  end

end
