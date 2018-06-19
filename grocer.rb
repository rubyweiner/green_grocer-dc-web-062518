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
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
