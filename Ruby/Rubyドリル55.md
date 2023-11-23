### 自分のコード

```ruby
def register_data
  puts "名前を入力してください"
  name = gets.chomp
  puts "身長を入力してください"
  tall = gets.to_f
  puts "年齢を入力してください"
  age = gets.to_i
  puts "体重を入力してください"
  weight = gets.to_f
  person = {name: name, tall: tall, age: age, weight: weight}
  people << person
end

def show_data
  puts "見たい人の番号を選択してください"
  people.each_with_index do |people, index|
    puts "#{index}:#{person[:name]}"
  end
  n = gets.to_i
  puts "名前:#{person[n][:name]}"
  puts "年齢:#{person[n][:age]}"
  puts "身長:#{person[n][:tall]}"
  puts "体重:#{person[n][:weight]}"
end

people = []

while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data
  elsif input == 1
   show_data
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end
```

### 間違え
- people配列を作っているからすべてのメソッド引数にpeopleを指定する
def register_data → def register_data(people)
- each_with_indexは0から始まるので+1が必要
- 同様にnも-1が必要
