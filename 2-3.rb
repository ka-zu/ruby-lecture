# coding: utf-8
#
# 課題 2-3
# 引数で与えられた西暦(数字)がうるう年かどうが判定するメソッド「leap_year?」を
# 作成してください。
# うるう年であればtrueを、そうでなければfalseを戻り値として返します。
#
# さらに上記メソッドを使い、画面から西暦を入力して、うるう年であれば「うるう年である」を、
# そうでなければ「うるう年ではない」を表示させるプログラムを作成してください。
#

def leap_year?(year)
     
    if(year.to_i%100 == 0 and year.to_i%400 == 0)
        return true
    else
        return false
    end    
end

print '西暦の値を入力してください: '
year = gets.chomp

is_leap_year = leap_year?(year)

puts is_leap_year

if is_leap_year
    puts year + "年はうるう年である。"
else
    puts year + "年はうるう年ではない。"
end
