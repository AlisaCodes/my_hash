require('rspec')
require('my_hash')

describe(My_Hash)
  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = My_Hash.new(1, 2)
      test_hash.myStore("cattin", "around")
      expect(test_hash.myFetch("cattin")).to(eq("around"))
    end
  end
