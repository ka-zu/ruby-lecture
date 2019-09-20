# coding: utf-8
#
# 課題 D-1
# 次に示す、「Polygon」クラスに以下の機能を持つメソッドを追加してください。
# ・図形をX方向にX倍にY方向にY倍、拡大または、縮小した図形の座標を返すメソッド
# ・図形をN度、反時計回りに回転した図形の座標を返すメソッド
# ・図形をX, Y(距離)、平行移動した図形の座標を返すメソッド
#
# 【ヒント】
# Rubyには、行列を扱うMatrixクラスがあります。Matrixクラスを使うには下記の様に記述します。
# require 'Matrix'
# リファレンスマニュアル: http://docs.ruby-lang.org/ja/2.1.0/library/matrix.html
#

require "matrix"

triangle = [{ x: 10, y: 0 }, { x: 50, y: 100 }, { x: 150, y: 0 }]
square   = [{ x: 0, y: 0 }, { x: 0, y: 100 }, { x: 100, y: 100 },
            { x: 100, y: 0 }]
pentagon = [{ x: 0, y: 100 }, { x: 100, y: 150 }, { x: 200, y: 100 },
            { x: 150, y: 0 }, { x: 50, y: 0 }]

class Polygon
    def initialize(shape)
        @shape_points = shape
    end

    #拡大
    def expand(x, y)
        temp_shape_points = Marshal.load(Marshal.dump(@shape_points))
        for point in temp_shape_points do
            point[:x] *= x
            point[:y] *= y
        end
        return temp_shape_points
    end

    #縮小
    def reduction(x, y)
        temp_shape_points = Marshal.load(Marshal.dump(@shape_points))
        for point in temp_shape_points do
            point[:x] /= x
            point[:y] /= y
        end
        return temp_shape_points
    end
    
    #平行移動
    def shift(k)
        temp_shape_points = Marshal.load(Marshal.dump(@shape_points))
        for point in temp_shape_points do
            point[:x] += k
            point[:y] += k
        end
        return temp_shape_points
    end

    #回転
    def rotate(theta)
        temp_shape_points = Marshal.load(Marshal.dump(@shape_points))
        for point in temp_shape_points do
            tmp_x = temp_y = 0
            
            tmp_x = point[:x] * Math.cos(theta * 2 * Math::PI / 360) 
                    - point[:y] * Math.sin(theta * 2 * Math::PI / 360)
            tmp_y = point[:x] * Math.sin(theta * 2 * Math::PI / 360)
                    - point[:y] * Math.cos(theta * 2 * Math::PI / 360)
            
            point[:x] = tmp_x
            point[:y] = tmp_y
            
        end
        return temp_shape_points
    end
end

p1 = Polygon.new(triangle)
p2 = Polygon.new(square)
p3 = Polygon.new(pentagon)

puts "[拡大]"
puts p1.expand(2,2)
puts "[縮小]"
puts p1.reduction(2,2)
puts "[平行移動]"
puts p1.shift(100)
puts "[回転]"
puts p1.rotate(90)