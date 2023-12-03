

# 問題.1
# 以下の仕様を満たすアプリケーションを作成しなさい。また、注意書きを必ず読んでから実装に入りなさい。実装の際、注意の下に記載されている雛形を使用しなさい。

# 仕様
# ・実行すると [1] : 点数を登録する, [2] : 点数を確認する, [3] : 終了する という選択肢を表示し、ユーザーに入力を求め、その入力に従い以下のような処理を行う
# ・アプリケーションを終了するまで、処理を繰り返す

# [1]の処理
# ・名前、年齢、国語・数学・英語の3教科の点数を入力させ、保存する

# [2]の処理
# ・投稿された情報から番号と名前で一覧を表示し（例 [1]山田）、見たい個人の番号の入力を求める
# ・ 入力された個人の名前、年齢、国語・数学・英語の3教科の点数を表示する

# [3]の処理
# ・アプリケーションを終了する


def registration_student(students)
  # 生徒の名前と年齢を登録できるようにしなさい
  student = {}
  puts '生徒名を入力してください'
  student[:name] = gets.chomp
  puts '生徒の年齢を入力してください'
  student[:age] = gets.to_i
  # 登録した生徒の国語、数学、英語の点数を登録できるようにしなさい
  puts "国語の得点は？"
  student[:score_japanese] = gets.to_i
  puts "数学の得点は？"
  student[:score_math] = gets.to_i
  puts "英語の得点は？"
  student[:score_english] = gets.to_i
  students << student
end

def show_student_name(students)
  # 登録された生徒の名前を番号を振って表示しなさい
  puts '見たい生徒の番号を入力してください'
  students.each_with_index do |student, index|
    puts "[#{index + 1}]:#{student[:name]}"
  end
  num = gets.to_i
  # 選択された生徒の名前、年齢、国語、数学、英語の点数を表示できるようにしなさい
  student = students[num - 1]
  puts "名前:#{student[:name]}"
  puts "年齢:#{student[:age]}"
  puts "国語:#{student[:score_japanese]}"
  puts "数学:#{student[:score_math]}"
  puts "英語:#{student[:score_english]}"
end

students = []

while true
  puts '行いたい項目を選択してください'
  puts '[1]点数を登録する'
  puts '[2]点数を確認する'
  puts '[3]終了する'
  input = gets.to_i
  if input == 1
    registration_student(students)
  elsif input == 2
    show_student_name(students)
  elsif input == 3
    # アプリケーションを終了させなさい
  else
    puts '無効な値です'
  end
end