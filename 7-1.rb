# coding: utf-8
#
# 課題 7-1
# 以下の機能をもつクラスを定義してください。
# ・「ロボット」を表すRobotクラスを作成してください。
# ・Robotクラスのオブジェクトを新しく作成する時に、 ロボットの名前を登録できるようにしてください。
# ・Robotオブジェクトに何型かを表すタイプ(変数名type)を設定できるようにしてください。
# ・Robotオブジェクトが以下の形式で挨拶を返す、greetingメソッドを定義してください。
#   「こんにちは、私は[ロボットのタイプ]型ロボットの[ロボットの名前]です。」
#   ([]書きの部分は、オブジェクトが持っているタイプと名前を表示してください。)
#

robot_data = []
robot_data << { name: 'ドラえもん', type: '猫' }
robot_data << { name: 'アトム', type: '人' }
robot_data << { name: 'ルンバ', type: '掃除機' }
robot_data << { name: 'Pepper', type: '人' }

class Robot

  def initialize(name)
    @name = name
  end

  def type=(type)
    @type = type
  end

  def greeting()
    printf("こんにちは、私は%s型ロボットの%sです。",@type, @name)
  end
end

robot_data.each do |data|
  # オブジェクト作成時にロボットの名前を登録する
  robot = Robot.new(data[:name])
  # オブジェクトにタイプを設定する。
  robot.type = data[:type]
  # オブジェクトの返す挨拶を表示する。
  puts robot.greeting
end
