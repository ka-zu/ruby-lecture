# coding: utf-8
#
# 課題 A-1
# 二次方程式 a x 2 + b x + c = 0 (a ≠ 0)の a、b、cを引数に渡して、
# 解の配列を戻り値とする「quad_equ」メソッドを作成してください。
#
# さらに、上記メソッドを使って、a,b,cを入力して解を表示させるプログラムを作成してください。
#
# 【ヒント1】
# cmathは、複素数演算をサポートするモジュールです。
# https://docs.ruby-lang.org/ja/latest/class/CMath.html
#
# 【ヒント2】
# 重解を持つ場合と持たない場合の条件分岐を考える。
#

require 'cmath'

def quad_equ(a, b, c)

    #判別式D  b^2 - 4*a*c
    d = b*b - 4*a*c
    
    puts d

    if d > 0
        ans1 = (-b + CMath.sqrt(d)) / 2.0*a
        ans2 = (-b - CMath.sqrt(d)) / 2.0*a
    elsif d == 0
        ans1 = ans2 = (-b + CMath.sqrt(d)) / 2.0*a
    else
        ans1 = (-b + CMath.sqrt(d)) / 2.0*a
        ans2 = (-b - CMath.sqrt(d)) / 2.0*a
    end

    return [ans1, ans2]
end

puts "二次方程式 a*x^2 + b*x + c = 0の解を求めます。"
print "a の値を入力してください："
a = gets.chomp.to_i
print "b の値を入力してください："
b = gets.chomp.to_i
print "c の値を入力してください："
c = gets.chomp.to_i

printf("%d*x^2 + (%d)*x + (%d)の解は\n", a, b, c)
ans_arr = quad_equ(a, b, c)
printf("x = %s , %s\n", ans_arr[0].to_s, ans_arr[1].to_s)

