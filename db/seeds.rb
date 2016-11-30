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
  'url' => 'http://lorirtaylor.com/wp-content/uploads/2012/11/Tweety-185x300.png'
  })
looney_tune1.save

looney_tune2 = Looney.new({
  'name' => 'Bugs Bunny',
  'breed' => 'Rabbit',
  'days_in' => 8,
  'owners_id' => owner3.id,
  'url' => 'https://s-media-cache-ak0.pinimg.com/originals/2a/d1/c4/2ad1c402a1e0ed38388605924df515a9.jpg'
  })
looney_tune2.save
looney_tune3 = Looney.new({
  'name' => 'Gossamer',
  'breed' => 'hair',
  'days_in' => 15,
  'owners_id' => owner4.id,
  'url' => 'http://vignette2.wikia.nocookie.net/looneytunesshow/images/8/8f/Lt_gossamer_174x252.png/revision/latest?cb=20110814201112'
  })
looney_tune3.save
looney_tune4 = Looney.new({
  'name' => 'Porky Pig',
  'breed' => 'Pig',
  'days_in' => 10,
  'owners_id' => nil,
  'url' => 'http://vignette1.wikia.nocookie.net/looneytunes/images/d/d2/Porky_Pig_(character_of_looney_tunes).png/revision/latest?cb=20130223192844'
  })
looney_tune4.save
looney_tune5 = Looney.new({
  'name' => 'Tazmanian Devil',
  'breed' => 'devil',
  'days_in' => 20,
  'owners_id' => nil,
  'url' => 'http://vignette4.wikia.nocookie.net/ideas/images/a/a3/Taz.png/revision/latest?cb=20120918044238'
  })
looney_tune5.save


binding.pry

nil