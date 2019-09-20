# coding: utf-8
#
# 課題 C-1
# 身長(cm)と体重(kg)を入力させて、以下の情報を表示させる「BMI」クラス定義してください。
#   BMI値、BMIの判定、肥満度(%)、肥満度の判定
#
# 計算方法
# BMI = 体重(kg) / (身長(m) * 身長(m))
# BMIの判定
#   18.5未満：低体重
#   18.5～25未満：標準の体重
#   25以上：肥満
# 肥満度(%) = ((体重(kg) - 標準体重(kg)) * 100) / 標準体重(kg)
# （標準体重(kg) = 身長(m) * 身長(m) * 22）
# 肥満度の判定
# -10%未満：やせ
# -10%～+10%未満：正常
# +10%～+20%未満：肥満気味
# +20%以上：肥満
#

class BMI 
    def initialize(height, weight)
        @height = height
        @weight = weight
        @bmi_val = (@weight / (@height*0.01)**2).round(1)
        @stan_weight = ((@height*0.01)**2 * 22).round(1)
        @obe_val =  (((@weight - @stan_weight) * 100) / @stan_weight).round(1)
    end

    def show_BMI() 
        puts "BMIは#{@bmi_val}です。"
    end

    def judge_BMI()
        if @bmi_val < 18.5
            puts "BMIは#{@bmi_val}：低体重です。"
        elsif @bmi_val < 25
            puts "BMIは#{@bmi_val}：標準体重です。"
        else
            puts "BMIは#{@bmi_val}：肥満体重です。"
        end
    end

    def show_obesity()
        puts "肥満度は#{@obe_val}%です。"
    end

    def judge_obesity()
        if @obe_val < -10.0
            puts "肥満度は#{@obe_val}%：やせ気味です。"
        elsif @obe_val < 10
            puts "肥満度は#{@obe_val}%：正常です。"
        elsif @obe_val < 20
            puts "肥満度は#{@obe_val}%：肥満気味です。"
        else
            puts "肥満度は#{@obe_val}%：肥満です。"
        end
    end
end

#main
print '身長(cm)を入力して下さい: '
height = gets.chomp.to_i

print '体重(kg)を入力して下さい: '
weight = gets.chomp.to_i

person1 = BMI.new(height, weight)
person1.show_BMI
person1.judge_BMI
person1.show_obesity
person1.judge_obesity