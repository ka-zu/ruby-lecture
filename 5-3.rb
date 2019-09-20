# coding: utf-8
#
# 課題 5-3
# 課題 5-2で作成した「array_to_hash」メソッドのテストを作成してください。
# テストケースは最低でも、['japan', 'us', 'india', 'china'] を渡された場合と、
# 空の配列を渡された場合の、2パターンを作成してください。
#

require 'test/unit'

class AtoHClass
    def self.array_to_hash(array)
        hash = {}
        array.each do |arr_value|
            hash.store(arr_value, arr_value.length)
    
        end
    
        return hash
    end
end

class AtoHTestClass < Test::Unit::TestCase
    def test_method
        assert_equal({"japan"=>5, "us"=>2, "india"=>5, "china"=>5}, 
                     AtoHClass.array_to_hash(['japan', 'us', 'india', 'china']))
        assert_equal({}, AtoHClass.array_to_hash([]))
    end
end