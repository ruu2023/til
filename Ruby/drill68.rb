# 追加する仕様
# ・[1]の処理が終わった後
# 1.購入を確定するか、買い物を続けるかをユーザーに入力させる
# 2.入力させた値ごとの処理を行う
# 3.(購入確定するを選択した場合) 合計金額を表示し、ユーザーに支払う金額を入力してもらう。支払う金額から合計金額をマイナスし、あまりを出力する。※金額が足りない場合はもう一度入力させる。


def post_item(a_cart)
  # 変数の定義
  post = {}
  puts "商品名を入力してください："
  post[:name] = gets.chomp
  puts "値段を入力してください："
  post[:price] = gets.to_i
  puts "個数を入力してください："
  post[:count] = gets.to_i
  line = "---------------------------"

  # レビューの描画
  puts "商品名 : #{post[:name]}\n#{line}"
  puts "値段 : #{post[:price]}\n#{line}"
  puts "個数 : #{post[:count]}\n#{line}"
  puts "合計金額 :#{post[:price] * post[:count]}\n#{line}"

  # 配列オブジェクトに追加
  a_cart << post

  # a_cartをメソッドの呼び出し元に返す
  return a_cart
end

def check_items(a_cart)
  # リストの表示
  total_price = 0
  line = "---------------------------"
  a_cart.each do |post|
    puts "#{post[:name]}/#{post[:price]}/#{post[:count]}\n#{line}"
    total_price += post[:price] * post[:count]
  end
  puts "合計金額 : #{total_price}"

  puts "購入しますか？"
  puts "[0]購入に進む"
  puts "[1]買い物を続ける"
  num = gets.to_i
  case num
  when 0
    cashier(a_cart, total_price)
  end
end

def cashier(cart, price)
  puts "合計金額 : #{price}"
  puts "お支払い金額を入力してください"
  close = true
  while close
    payment = gets.to_i
    if payment < price
      puts "#{(payment - price).abs}円不足しています。もう一度入力してください。"
    elsif payment == price
      puts "お買い上げありがとうございます。"
      exit
    else
      puts "#{payment - price}のお釣りです。"
      exit
    end
  end
end

def end_program
  exit
end

def exception
  puts "入力された値は無効な値です"
end

cart = []         # 配列オブジェクトcartの生成

while true do
  # メニューの表示
  puts "商品数: #{cart.length}"
  puts "[0]商品をカートに入れる"
  unless cart.empty?
    puts "[1]カートを確認する"
  end
  puts "[2]アプリを終了する"

  input = gets.to_i

  if input == 0 then
    cart = post_item(cart)  # post_itemメソッドの呼び出し
  elsif input == 1 then
    check_items(cart) # check_itemsメソッドの呼び出し
  elsif input == 2 then
    end_program    # end_programメソッドの呼び出し
  else
    exception        # exceptionメソッドの呼び出し
  end
end