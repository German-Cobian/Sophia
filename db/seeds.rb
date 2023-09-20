puts "Seeding..."

User.create(username: 'Aristokle01',
  display_name: 'Aristotle Kleon',
  role: 0,
  email: 'aristo@gmail.com',
  password: 'aristo123',
  date_of_birth: '02 May 1985 21:20:49.262680000',
  city: 'Athens',
  country: 'Greece',
  join_date: '15 Feb 2022 21:20:49.262680000',
  bio: 'Give me them classical, old time philosophers.'
  ).avatar.attach(io: File.open('app/assets/images/Aristo.jpg'), filename: 'Aristo.jpg')

User.create(username: 'Schelling02',
  display_name: 'Guy Schelling',
  role: 0,
  email: 'schell@gmail.com',
  password: 'schell123',
  date_of_birth: '23 Jul 1994 21:20:49.262680000',
  city: 'Munich',
  country: 'Germany',
  join_date: '11 Jan 2021 21:20:49.262680000',
  bio: 'Investigate with caution, assert your truth fiercely.'
  ).avatar.attach(io: File.open('app/assets/images/Schell.jpg'), filename: 'Schell.jpg')

User.create(username: 'Admin01',
  display_name: 'Humphrey Bogart',
  role: 1,
  email: 'admin@gmail.com',
  password: 'admin123',
  date_of_birth: '19 Sep 1967 21:20:49.262680000',
  city: 'Paris',
  country: 'France',
  join_date: '07 Nov 2019 21:20:49.262680000',
  bio: 'Assert your truth with power, crush all dissenting voices.'
  ).avatar.attach(io: File.open('app/assets/images/Bogart.jpg'), filename: 'Bogart.jpg')

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
  body: 'Can anything be more real than that which is tangible...', 
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