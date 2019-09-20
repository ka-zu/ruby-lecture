# coding: utf-8
#
# 課題 7-2
# 課題 4-3の数当てゲームを以下に従ってクラスに定義してください。
# ・数当てゲームを表す「NumberGame」という名前のクラスを作成してください。
# ・正解の数値の範囲は1〜1000ではなく1〜nとし、
#   NumberGame」クラスのオブジェクトを作成する際に、nの初期値を渡してください。
# ・ゲームを開始するstartメソッドを定義してください。
# ・プログラムの読みやすさや拡張性も考えて、必要な機能をメソッドとして定義してください。
#

class NunberGame
    def initialize(rand_max)
        @rand_max = rand_max
    end

    def start()
        correct_num = make_correct_num()
        count = 0

        while true
            count += 1
            input = check_input()

            if(check_answer(input, correct_num))
                break
            end
        end

        printf("%d回の回答で正解しました。\n", count)
    end

    #答えの数を生成する
    def make_correct_num()
        return rand(@rand_max)+1
    end

    #入力されたものが整数かチェックする
    def check_input()
        while true
            print '1~' + @rand_max.to_s + 'までの数値を入力して下さい: '
            input = gets.chomp
            
            if(input =~ /^[0-9]+$/)
                if input.to_i > 0 and input.to_i < @rand_max
                    break
                else
                    puts "正しい範囲の数値を入力してください"
                end
            else
                puts "数値を入力してください"
            end
        end
        return input.to_i
    end

    def check_answer(input, correct_num)
        if(input == correct_num)
            return true
        end
    
        if input < correct_num
            puts "正解は入力された数値よりも 大きい です。"
            return false
        else
            puts "正解は入力された数値よりも 小さい です。"
            return false
        end
    end

end

game1 = NunberGame.new(1000)
game1.start