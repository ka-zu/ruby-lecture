# coding: utf-8
#
# 課題 4-2
# 厚さ1mmの紙があるとします。この紙は、
# ・何度でも2つ折りにできる。
# ・2つ折にするたびに2倍の厚さになる。
# とします。
#
# 画面から入力した数値(単位はkm)に対し、上記の紙を何回折り返すと
# 紙の厚みがこの数値を超えるか表示してください。
#
# 例：390000(39万km：月までの距離)を入力した場合
#   数値(km)を入力して下さい: 390000
#   紙を39回折り返すと390000kmを超えます。
#

print '数値(km)を入力して下さい: '
dist_km = gets.chomp.to_i

#厚さ1mmキロメートル換算
thickness_km = 1.0 * 0.000001
#折った回数
fold_num = 0

while thickness_km < dist_km
    thickness_km *=2
    fold_num +=1
end

printf('紙を%d回折り返すと%dkmを超えます。\n', fold_num, dist_km)