# coding: utf-8
#
# 課題 F-1
#
# 「ズン」「ドコ」のいずれかをランダムで出力し続けて
# 「ズン」「ズン」「ズン」「ズン」「ドコ」の配列が出たら
# 「キ・ヨ・シ！」と出力して終了するメソッドを定義してください。
#
# Javaでズンドコキヨシ
# https://qiita.com/y-sugasawa/items/35828ee9a0ac531689b6
#
#

def zun_doko()
    
    array = ["","","","",""]
    ans = [0,0,0,0,1]
    a = 0
    
    while a < 10
        num = rand(2)
        
        case num
            when 0
                array.shift
                array.push(0) 
                print "ズン "
            when 1
                array.shift
                array.push(1)
                print "ドコ "
            else
        end
            
        if array == ans
            print "\nキ・ヨ・シ！\n"
            break
        end
        
    end
end

puts "[ズンドコプログラム]"
zun_doko()