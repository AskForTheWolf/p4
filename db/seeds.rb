Post.destroy_all
Comment.destroy_all

#Seeding the posts so that there's "stock" data in there to look at
#How boring would this be if you had to make everything yourself every time?
#I also liked the last entry from Scribble so I kept some of the text
posts = Post.create!([
  {title:"This was hard", body: "I had to start over."},
  {title:"Worst drink?", body: "Worst thing you've ever had, go."},
  {title:"Bad tippers?", body: "Should I set them on fire?"}
])

comments = Comment.create([
  {body:"I Agree", post: posts[0]},
  {body:"Tequila.  Not in the moment, but the next day.", post: posts[1]},
  {body:"YUP", post: posts[2]}
])
recipes = Recipe.create!([
  {name:"Moscow Mule", body:"vodka, lime, ginger beer, ice", glass:"Mug"},
  {name:"Kamikaze", body:"Vodka, triple sec, lime", glass:"shot"},
  {name:"Todd Collins", body:"Gin, sour mix, soda", glass:"Collins"}
  ])
