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
  'days_in' => 8
  })
looney_tune1.save

looney_tune2 = Looney.new({
  'name' => 'Bugs Bunny',
  'breed' => 'Rabbit',
  'days_in' => 8,
  'owners_id' => owner3.id
  })
looney_tune2.save
looney_tune3 = Looney.new({
  'name' => 'Gossamer',
  'breed' => 'hair',
  'days_in' => 15,
  'owners_id' => owner4.id
  })
looney_tune3.save
looney_tune4 = Looney.new({
  'name' => 'Porky Pig',
  'breed' => 'Pig',
  'days_in' => 10,
  'owners_id' => nil
  })
looney_tune4.save
looney_tune5 = Looney.new({
  'name' => 'Tazmanian Devil',
  'breed' => 'devil',
  'days_in' => 20,
  'owners_id' => nil
  })
looney_tune5.save


binding.pry

nil