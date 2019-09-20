# coding: utf-8
#
# 課題 4-3
# 以下のルールの数当てゲームを作成してください。
#
# １．正解の数値は1〜1000までの乱数を使ってプログラム内で生成する。
#     【ヒント】
#     1〜1000の範囲の乱数を生成するには下記の様にします。
#     random_number = rand(1000) + 1
#
# ２．プレイヤーの入力値が合ってない場合、「正解は入力された数値よりも大きいです。」
#     または、「正解は入力された数値よりも小さいです。」と表示する。
#
# ３．プレイヤーの入力値が合ってる場合、「[count]回の解答で正解しました。」と出力して終了する。
#     [count]の部分には、正解までにかかった回数を表示させる。
#

correct_num = rand(1000) + 1
count = 0

while true
    count += 1
    print '1~1000までの数値を入力して下さい: '
    input = gets.chomp.to_i

    if(input == correct_num)
        break
    end

    if input < correct_num
        puts "正解は入力された数値よりも大きいです。"
    else
        puts "正解は入力された数値よりも小さいです。"
    end
end

printf("%d回の回答で正解しました。\n", count)