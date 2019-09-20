# coding: utf-8
#
# 課題 2-2
# 底辺と高さを画面から入力して、三角形の面積を表示させるプログラムを作成してください。
#
# 【ヒント】
# 入力値の取得には、getsメソッドを使います。
# 以下は、画面から入力した値をそのまま表示するプログラムです。
# 課題を解く参考にしてください。
#

#print '値を入力してください: '
#input = gets.chomp
#puts input

print '底辺の値を入力してください: '
base = gets.chomp
puts "底辺は"+base

print '高さの値を入力してください: '
height = gets.chomp
puts "高さは"+height

printf('面積は%.1fです。', 0.5*base.to_i*height.to_i)

