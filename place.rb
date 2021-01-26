class Plan
  attr_accessor :name
  attr_accessor :price

  def initialize(name:, price:)
  self.name = name
  self.price = price
  end

## 特に指定がない場合は、インスタンスメソッドの定義となる
## クラスメソッドを作る場合は、self.をつける(ひとつひとつのインスタンスに含まれるデータは使わないメソッドを定義したい場合など)
## selfは、インスタンス自身を表す(ここではインスタンスが代入されているplan)
  def info
    return "#{self.name}旅行 (#{self.price}円)"
  end

  def get_total_price(count)
    total_price = self.price * count
      if count >= 5
        puts "5名以上なので10％割引となります"
        (total_price *= 0.9).floor
      else
      return total_price
      end
  end

end