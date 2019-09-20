# coding: utf-8
#
# 課題 B-1
# 二次元ベクトル(x, y)を扱う「Vector」クラスを定義してください。
# このクラスでは、少なくとも以下の３つのメソッドが使える必要があります。
#
# １．newメソッド
#     ２つの値x, yを指定してベクトルの値を設定する。
#
# ２．to_sメソッド
#     オブジェクトが保持している２つの値x, yを元にして、"(x, y)”のような文字列を返す。
#
# ３．lengthメソッド
#     ベクトルの大きさを返す。
#     (平方根を求めるにMath::sqrtメソッドを利用してもよい。)
#
# 【出力例】
# > irb
# >> require "./B-1"
# => true
# >> v = Vector.new(1, 2)
# => #<Vector:...>
# >> v.to_s
# => "(1, 2)"
# >> v.length
# => 2.23606797749979
#


class Vector
    def initialize()
        @x = 0.0
        @y = 0.0
    end
    
    def initialize(x, y)
        @x = x
        @y = y
    end

    def to_s()
        return "(#{@x}, #{@y})"
    end

    def length()
        return Math.sqrt(@x*@y + @y*@y)
    end
end

vec1 = Vector.new(1, 1)
puts vec1.to_s()
puts vec1.length