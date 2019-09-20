# coding: utf-8
#
# 課題 3-1
# 課題 2-3で作成したメソッド「leap_year?」のテストを作成してください。
#

require 'test/unit'

class LeapYearClass
    def self.leap_year?(year)
        if(year.to_i%100 == 0 and year.to_i%400 == 0)
            return true
        else
            return false
        end    
    end
end

#テストケースを作成するクラス
class TestClass < Test::Unit::TestCase
    def test_year
        assert_equal(true,LeapYearClass.leap_year?(1600))
        assert_equal(false,LeapYearClass.leap_year?(1601))
    end
end

