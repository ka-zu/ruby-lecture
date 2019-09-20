# coding: utf-8
#
# 課題 4-1
# 入力された金額を支払うのに必要な金種(紙幣や硬貨)の枚数を計算して表示してください。
# ただし、合計枚数が最も少なくなる組み合わせを計算してください。
# 金種は、以下のkinshu配列を使ってください。
#
# 例：
# 金額: 8362
# 10000: 0枚
#  5000: 1枚
#  2000: 1枚
#  1000: 1枚
#   500: 0枚
#   100: 3枚
#    50: 1枚
#    10: 1枚
#     5: 0枚
#     1: 2枚
#

kinshu = [10000, 5000 ,2000, 1000, 500, 100, 50, 10, 5, 1]
#枚数
maisu = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

print '金額を入力してください: '
price = gets.chomp.to_i

for i in 0..9 do
    if price - kinshu[i] == 0
        maisu[i] += 1
        break
    end

    while price >= kinshu[i]
        #puts "現在金額："+price.to_s+"　金種："+kinshu[i].to_s
        price -= kinshu[i]
        maisu[i] += 1
    end
end

print "金額：" + price.to_s + "\n"
for i in 0..9 do
    printf("%5d：%2d枚\n",kinshu[i], maisu[i])
end
