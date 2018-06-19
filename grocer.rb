def consolidate_cart(cart)
  cart.each_with_object({}) do |items, new_hash|
    items.each do |item, info|
      if new_hash[item]
        info[:count] += 1
      else
        info[:count] = 1
        new_hash[item] = info
      end
    end
  end
end

def apply_coupons(cart, coupons)
coupons.each do |each_coupon|
    coupon_item = each_coupon[:item]
    if cart[coupon_item] && cart[coupon_item][:count] >= each_coupon[:num]
      if cart["#{coupon_item} W/COUPON"]
        cart["#{coupon_item} W/COUPON"][:count] += 1
      else
        cart["#{coupon_item} W/COUPON"] = {:count => 1, :price => each_coupon[:cost]}
        cart["#{name} W/COUPON"][:clearance] = cart[coupon_item][:clearance]
      end
      cart[name][:count] -= each_coupon[:num]
    end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
