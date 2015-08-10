class My_Hash
  define_method(:initialize) do |key, value|
    @my_hash = [[key, value]]
  end

  define_method(:myStore) do |key, value|
    @my_hash.push([key, value])
  end

  define_method(:myFetch) do |key|
    @my_hash.each() do |item|
      if item[0] == key
        return item[1]
      end
    end
  end

  define_method(:myLength) do
    @my_hash.count()
  end

  # This method is incomplete!
  # define_method(:myMerge) do |addition|
  #   # binding.pry
  #   addition.get_hash().each() do |item|
  #     @my_hash.push(item)
  #   end
  # end

  define_method(:get_hash) do
    return @my_hash
  end
end
