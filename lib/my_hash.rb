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
end
