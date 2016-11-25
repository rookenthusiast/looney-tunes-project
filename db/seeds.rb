require_relative('../models/looney')
require_relative('../models/owner')
require('pry-byebug')

Looney.delete_all
Owner.delete_all

looney_tune1 = Looney.new({
  'name' => 'Tweety_pie',
  'breed' => 'canary',
  'days_in' => 8
  })

looney_tune1.save

looney_tune2 = Looney.new({
  'name' => 'Bugs Bunny',
  'breed' => 'Rabbit',
  'days_in' => 8
  })

looney_tune2.save

looney_tune3 = Looney.new({
  'name' => 'Gossamer',
  'breed' => 'hair',
  'days_in' => 15
  })

looney_tune3.save

looney_tune4 = Looney.new({
  'name' => 'Porky Pig',
  'breed' => 'Pig',
  'days_in' => 10
  })

looney_tune4.save

looney_tune5 = Looney.new({
  'name' => 'Tazmanian Devil',
  'breed' => 'devil',
  'days_in' => 20
  })

looney_tune5.save

owner1 = Owner.new({
  'name' => 'Granny'
  })

owner1.save

owner2 = Owner.new({
  'name' => 'Elmer Fudd'
  })

owner2.save

owner3 = Owner.new({
  'name' => 'Marvin the Martian'
  })

owner3.save

binding.pry

nil