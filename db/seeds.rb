puts "Seeding..."

User.create(username: 'GlumpPunk09', email: 'glmpnk@gmail.com', password: 'glmpnk123')

Category.create(topic: 'Metaphysics')
Category.create(topic: 'Gnoseology')
Category.create(topic: 'Logic')
Category.create(topic: 'Ethics')

Article.create(
  title: 'The world as it is and the world as perceived', 
  body: 'Kant shares his insights', 
  user_id: 1, 
  category_id: 1)

Article.create(
  title: 'The limits of human knowledge', 
  body: 'Hume limits it to sense perceptions', 
  user_id: 1, 
  category_id: 2)

  Article.create(
  title: 'The importance of the identity function',
  body: 'Bertrand Russell gives us the scoop',
  user_id: 1,
  category_id: 3)

  Article.create(
  title: 'What precisely is the good life', 
  body: 'The prime concern of Socrates', 
  user_id: 1, 
  category_id: 4)

puts "Seeding done."