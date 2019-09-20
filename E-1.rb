# coding: utf-8
#
# 課題 E-1
# 以下の機能を持った、料理のレシピを表現する「Recipe」クラスを定義してください。
# ・オブジェクトを作成する時に、料理名を設定できる様にして下さい。
# ・１⼈前の材料名のリストと分量を{ 材料名 => 数量 } の形式のハッシュで設定した上で、
#   表⽰できる様にしてください。
# ・ｎ⼈前の材料名のリストと分量を表⽰できる様にしてください。
# ・料理の⼿順を設定・表⽰できること(手順は文字列で良いです)。
# ・レシピを作成した⼈の名前を設定・表⽰できること。
#

class Recipe
    def initialize(name)
        @nenu_name = name
    end

    def food_list=(food)
        @food_list = {}
        food.each do |key, value|
            @food_list.store(key, value)
        end
    end

    def process=(process)
        @process = process
    end

    def maker=(maker)
        @maker = maker
    end

    def show_list()
        puts "[材料:1人分]"
        @food_list.each do |key, value|
            puts "#{key}\t\t#{value}"
        end
    end
    
    def show_Npeople_list(num)
        puts "[材料:#{num}人分]"
        @food_list.each do |key, value|
        
            #個数の数字の部分 数字以外を落とす
            value_num = value.delete("^0-9")
            
            #個数の単位の部分　数字を落とす
            value_str = value.delete("0-9")
            
       
            #一つまみとかの場合
            if value_num == ""
                puts "#{key}\t\t#{value}*#[num]回"
            else
                value_num = value_num.to_i * num.to_i
                puts "#{key}\t\t#{value_num}#{value_str}"
            end
        end
    end

    def show_process()
        puts "[手順]"
        for process in @process do
            puts process
        end
    end

    def show_maker()
        puts "このレシピの作成者は#{@maker}さんです。"
    end
    
    
end

res1 = Recipe.new("ゆで卵")
res1.food_list= {"生卵": "1個", 
                 "水": "300ml"}
res1.show_list
res1.show_Npeople_list(10)

res1.process = ["1.水を沸かす。", "2.卵を入れる。", "3.3分ゆでる。"]
res1.show_process

res1.maker = "いちろう"
res1.show_maker()


