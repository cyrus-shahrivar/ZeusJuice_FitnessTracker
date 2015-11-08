# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
articles = Article.create([{ title: 'Google Calorie Counter', body: 'Found this <%=<a href="https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#safe=off&q=how+many+calories+are+in+a+hamburger">%>app<%=</a>%> on google while trying to figure out how many calories were in a burger I made this afternoon.  In additon to the calorie counter app, there\'s tons of information from the USDA nicely organized in an info box in the same page.  I highly recommend utilizing this app to figure out calories for thing you eat before updating your form.  It\'ll help you learn more about what you are eating and help you towards your fitness goals.
', author: 'By Cyrus Shahrivar' , image_url: "/assets/CalorieCounterScreenshot.png"},
{ title: 'Article 1-1', body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
', author: 'Bon Jovi' , image_url: "https://upload.wikimedia.org/wikipedia/commons/1/10/Ejercicios-bajar.jpg" },
{ title: 'Article 2', body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
', author: 'Bon Jovi',image_url: "https://upload.wikimedia.org/wikipedia/commons/1/10/Ejercicios-bajar.jpg"  },
{ title: 'Article 3', body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
', author: 'Bon Jovi',image_url: "https://upload.wikimedia.org/wikipedia/commons/1/10/Ejercicios-bajar.jpg"  },
{ title: 'Article 4', body: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
', author: 'Bon Jovi',image_url: "https://upload.wikimedia.org/wikipedia/commons/1/10/Ejercicios-bajar.jpg"  }])

tweets = Tweet.create([{ author: 'Cyrus',body: 'blah blah blah' },
{ author: 'Cyrus',body: 'Finished Tough Mudder Tri-State 11-7-2015! 2nd Tough Mudder complete!' },
{ author: 'Courtney',body: 'Finished the Tough Mudder in New Jersey!  Awesome views of the Statue of Liberty' },
{ author: 'Zeus',body: 'Sleep on the couch because I am a cat.  I cannot believe my parents think it is ok to use my name without permission.' },
{ author: 'Zeus',body: 'Pounced an ounce.  That\'s killing the string.  It deserved it.  Feeling pumped!' },
{ author: 'Courtney',body: 'Just ran 7 miles this morning.  Looking forward to running Tough Mudder on Nov. 7th! ' },
{ author: 'Cyrus',body: 'Working on my 2nd WDI project.  Realized I haven\'t exercised in a while, so I\'m going for a run with Lululemon to test out an app with the SkillCoin NYC app guys.'  },
{ author: 'Cyrus',body: 'Testing, testing, 1, 2, 3.' }])

members = Member.create([{username: 'Cyrus', password: 'poop', password_confirmation:'poop'}])
