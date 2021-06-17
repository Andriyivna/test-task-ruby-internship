require_relative "town"

towns = [
  Town.new("Lubeck",20,50,60,36,96,),
  Town.new("Reval",35,50,40,60,45,),
  Town.new("Bergen",62,15,18,82,54,)
]

towns_permutation = towns.permutation.to_a
all_goods = towns[0].goods.keys
goods_permutation = all_goods.permutation(2).to_a

for good in all_goods
  goods_permutation.push([good,good])
end

max = 0
counter = 0
for i in 0..towns_permutation.length-1
  for k in 0.. goods_permutation.length-1
    counter += 1
    puts 'Run ' + counter.to_s
    coins = 50
    for j in 0..towns_permutation[i].length-1
      town = towns_permutation[i][j]
      if j != 0
        coins += town.goods[goods_permutation[k][j-1]]
        puts 'Sell '+ goods_permutation[k][j-1].to_s + ' for ' + town.goods[goods_permutation[k][j-1].to_sym].to_s + ' in ' + town.name + '. ' + coins.to_s + ' coins left.'
      end
      if j < towns_permutation[i].length-1
        coins -=  town.goods[goods_permutation[k][j]]
        puts 'Buy '+ goods_permutation[k][j].to_s + ' for ' + town.goods[goods_permutation[k][j].to_sym].to_s + ' in ' + town.name + '. ' + coins.to_s + ' coins left.'
      end
    end
    puts 'Final coins: ' + coins.to_s
    if max < coins
      max = coins
    end
  end
end
puts 'Max result: ' + max.to_s

