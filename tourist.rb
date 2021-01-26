require "/Users/zen_fumi/Desktop/Travel_plan/place.rb"
require'pry'

## まとめてplansに代入すると追加作業が楽になる
plan1 = Plan.new(name: "沖縄", price: 10000)
plan2 = Plan.new(name: "北海道", price: 20000)
plan3 = Plan.new(name: "九州", price: 15000)

plans = [plan1, plan2, plan3]

puts "旅行プランを選択してください。"

## each_with_index(x)などを使うとスッキリする
index = 1
plans.each do |plan|
  puts "#{index}. #{plan.info}"
  index += 1
end

while true
  print "プランの番号を選択 >"
  select_plan_num  = gets.chomp.to_i
  break if (1..3).include?(select_plan_num)
  puts "1〜3の番号を入力してください。"
end

chosen_plan = plans[select_plan_num - 1]

puts "#{chosen_plan.name}旅行ですね。"

puts "何名で予約されますか？"

while true
  print "人数を入力>"
  count = gets.chomp.to_i
  break if count >= 1
  puts "1以上を入力してください。"
end

puts "#{count}名ですね。"

puts "合計料金は#{chosen_plan.get_total_price(count)}円になります。"