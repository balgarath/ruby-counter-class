
class BucketCounter < Hash
  def initialize(buckets)
    @buckets = buckets
  end
  
  def add(index)
    if(index == 0)
      new_index = '0'
    else
      new_index = nil
      for x in @buckets
        if index <= x
          upper = x
          lower = (@buckets.index(x) == 0 ? 1 : @buckets[@buckets.index(x)-1]+1)
          new_index = upper == lower ? "#{upper}" : "#{lower}-#{upper}"
          break
        end
      end

      new_index = "#{@buckets.last}+" if(!new_index) 
    end

    if self[new_index]
      self[new_index] += 1
    else
      self[new_index] = 1
    end
  end

end
