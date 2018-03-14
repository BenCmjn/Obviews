ids = User.pluck(:id)
ids.shuffle[0..1]