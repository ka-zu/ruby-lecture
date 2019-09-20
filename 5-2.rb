# coding: utf-8
#
# 課題 5-2
# 文字列を要素にもつ配列を引数で受け取って、要素をキー(key)に、要素の文字数を値(value)にもつ
# ハッシュを返す「array_to_hash」メソッドを作成してください。
# なお、空の配列を受け取った場合は空のハッシュを返すものとします。
#
# 例１：
# array_to_hash(['japan', 'us', 'india', 'china'])
# =>
# { :japan => 5, :us => 2, :india => 5, :china => 5 }
#
# 例２：
# array_to_hash([])
# =>
# {}
#

def array_to_hash(array)
    hash = {}
    array.each do |arr_value|
        hash.store(arr_value, arr_value.length)

    end

    return hash
end

ans = array_to_hash(["apple", "watermelon", "tomato", "banana"])

puts ans