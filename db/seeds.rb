require_relative('../models/looney')
require_relative('../models/owner')
require('pry-byebug')


Looney.delete_all
Owner.delete_all

owner2 = Owner.new({
  'name' => 'Granny'
  })
owner2.save

owner3 = Owner.new({
  'name' => 'Elmer Fudd'
  })
owner3.save
owner4 = Owner.new({
  'name' => 'Marvin the Martian'
  })
owner4.save
# # binding.pry

looney_tune1 = Looney.new({
  'owners_id' => owner2.id,
  'name' => 'Tweety_pie',
  'breed' => 'canary',
  'days_in' => 8,
  'url' => 'https://s-media-cache-ak0.pinimg.com/236x/67/1b/cf/671bcfc283fd2804548744bd8d980343.jpg'
  })
looney_tune1.save

looney_tune2 = Looney.new({
  'name' => 'Bugs Bunny',
  'breed' => 'Rabbit',
  'days_in' => 8,
  'owners_id' => owner3.id,
  'url' => 'https://s-media-cache-ak0.pinimg.com/originals/6c/a8/61/6ca861f545a82affbd4a0f5feb8b5692.jpg'
  })
looney_tune2.save
looney_tune3 = Looney.new({
  'name' => 'Gossamer',
  'breed' => 'hair',
  'days_in' => 15,
  'owners_id' => owner4.id,
  'url' => 'http://orig06.deviantart.net/7605/f/2011/093/1/7/gossamer_by_desart-d3d6bm7.png'
  })
looney_tune3.save
looney_tune4 = Looney.new({
  'name' => 'Porky Pig',
  'breed' => 'Pig',
  'days_in' => 10,
  'owners_id' => nil,
  'url' => 'http://vignette3.wikia.nocookie.net/looneytunes/images/f/fc/Porky_Pig.gif/revision/latest?cb=20160417194145'
  })
looney_tune4.save
looney_tune5 = Looney.new({
  'name' => 'Tazmanian Devil',
  'breed' => 'devil',
  'days_in' => 20,
  'owners_id' => nil,
  'url' => 'https://s-media-cache-ak0.pinimg.com/originals/9f/2f/af/9f2fafe8ea7a4cc53044fc37745a52ec.jpg'
  })
looney_tune5.save


binding.pry

nil