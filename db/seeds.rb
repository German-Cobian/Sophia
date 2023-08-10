puts "Seeding..."

User.create(username: 'Aristokle01', email: 'aristo@gmail.com', password: 'aristo123')
User.create(username: 'Schelling02', email: 'schell@gmail.com', password: 'schell123')

Category.create(topic: 'Metaphysics')
Category.create(topic: 'Gnoseology')
Category.create(topic: 'Logic')
Category.create(topic: 'Ethics')

Article.create(
  title: 'The world as it is and the world as perceived', 
  body: 'But if these don\'t match, which has the strongest case...', 
  user_id: 1, 
  category_id: 1).image.attach(io: File.open('app/assets/images/Kant.jpg'), filename: 'Kant.jpg')

Article.create(
  title: 'The limits of human knowledge', 
  body: 'Some would limit it to sense perceptions...', 
  user_id: 1, 
  category_id: 2).image.attach(io: File.open('app/assets/images/Hume.jpg'), filename: 'Hume.jpg')

  Article.create(
  title: 'The importance of the identity function',
  body: 'Bertrand Russell gives us the scoop...',
  user_id: 1,
  category_id: 3).image.attach(io: File.open('app/assets/images/Math.jpg'), filename: 'Math.jpg')

  Article.create(
  title: 'What precisely is the good life', 
  body: 'Socrates would discuss this whith a margarita in his hand...', 
  user_id: 1, 
  category_id: 4).image.attach(io: File.open('app/assets/images/Socrates.jpg'), filename: 'Socrates.jpg')

  Article.create(
  title: 'Can we drill down to the "esence" of the thing', 
  body: 'That we perceive the world in a uniquely human fashion is undubitable...', 
  user_id: 2, 
  category_id: 1).image.attach(io: File.open('app/assets/images/Aristotle.jpg'), filename: 'Aristotle.jpg')

  Article.create(
  title: 'If my eyes don\'t lie to me', 
  body: 'can anything be more real than that which is tangible...', 
  user_id: 2, 
  category_id: 2).image.attach(io: File.open('app/assets/images/Locke.jpg'), filename: 'Locke.jpg')

  Article.create(
  title: 'The unconclusiveness principle',
  body: 'Yet another cheer for nihilism from the logicians...',
  user_id: 2,
  category_id: 3).image.attach(io: File.open('app/assets/images/Godel.jpg'), filename: 'Godel.jpg')

  Article.create(
  title: 'The nausea of living', 
  body: 'Let me drink deep of thy cup o despair...', 
  user_id: 2, 
  category_id: 4).image.attach(io: File.open('app/assets/images/Sartre.jpg'), filename: 'Sartre.jpg')

puts "Seeding done."