# coding: utf-8
#
# 課題 5-1
# 以下の3つの本に関するキー(key)と値(value)をもつハッシュを定義してください。
# (キーはシンボルで記述してください。)
#   キー: title  値: プロを目指す人のためのRuby入門
#   キー: author 値: 伊藤淳一
#   キー: price  値: 2980円
#
# そして、このハッシュの内容を取り出して画面に表示させてください。
#

book_info = {title:"プロを目指す人のためのRuby入門",
             author:"伊藤淳一",
             price:"2980円"}

book_info.each do |key, value|
    printf("キー：%s\t値：%s\n", key, value)
end