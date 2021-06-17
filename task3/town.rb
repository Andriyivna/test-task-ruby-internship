class Town
  @name
  @goods
  def initialize (town_name, salt, fish, cloth, copper, furs)
    @name = town_name
    @goods = {
      salt: salt ,
      fish: fish,
      cloth: cloth,
      copper: copper,
      furs: furs
    }
  end

  def name
     @name
  end

  def goods
    @goods
  end

end
