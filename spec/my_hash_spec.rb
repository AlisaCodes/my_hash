require('rspec')
require('my_hash')
require('pry')

describe(My_Hash)
#   describe("#myFetch") do
#     it("retrieves a stored value by its key") do
#       test_hash = My_Hash.new(1, 2)
#       test_hash.myStore("cattin", "around")
#       expect(test_hash.myFetch("cattin")).to(eq("around"))
#   end
#
#   describe("#myLength") do
#     it("returns number of key item pairs in an array") do
#       test_hash = My_Hash.new(3, 4)
#       test_hash.myStore(2, 6)
#       expect(test_hash.myLength()).to(eq(2))
#     end
#   end

  describe('#myMerge') do
    it('merges two my_Hashes into one') do
      test_hash = My_Hash.new(3, 4)
      test_hash.myStore(2, 6)
      test_hash2 = My_Hash.new("hey", "hi")
      test_hash2.myStore("yo", "howdy")
      expect(test_hash.myMerge(test_hash2)).to(eq([[3,4],[2,6],["hey", "hi"],["yo", "howdy"]]))
    end
  end
# end
