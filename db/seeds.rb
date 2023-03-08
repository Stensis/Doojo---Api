# Create 5 users
# Create 5 users

    user1 = User.create!(username: "irene", email: "irene@example.com", password:"irene1234", avatar: "https://i.pravatar.cc/150?u=user1", bio: "I'm user 1.", role: :user)
    user2 = User.create!( username: "jane", email: "jane@example.com", password:"jane1234", avatar: "https://i.pravatar.cc/150?u=user2", bio: "I'm user 2.", role: :user )
    user3 = User.create!( username: "edwin", email: "edwin@example.com", password:"edwin1234", avatar: "https://i.pravatar.cc/150?u=user3", bio: "I'm user 3.", role: :user )
    user4 = User.create!( username: "jay", email: "jay@example.com", password: "jay1234", avatar: "https://i.pravatar.cc/150?u=user4", bio: "I'm user 4.", role: :user)
    user5 = User.create!( username: "admin", email: "admin@example.com", password:"admin1234", avatar: "https://i.pravatar.cc/150?u=admin", bio: "I'm the admin.", role: :admin)

    category1 = Category.create!(
        name: "Food and Drink",
        created_at: "2022-12-15",
        updated_at: "2022-12-15"
      )
    category2 = Category.create!(
        name: "Fitness and Health",
        created_at: "2022-12-16",
        updated_at: "2022-12-16"
      )
      
    category3 = Category.create!(
        name: "Travel",
        created_at: "2022-12-17",
        updated_at: "2022-12-17"
      )
      

    category4 = Category.create!(
        name: "Fashion",
        created_at: "2022-12-18",
        updated_at: "2022-12-18"
      )
      

    category5 = Category.create!(
        name: "Business and Finance",
        created_at: "2022-12-19",
        updated_at: "2022-12-19"
      )
      

    blog1 = Blog.create!( 
    title: "My First Blog Post",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vitae ipsum et felis tincidunt hendrerit. Praesent eu libero nec tellus ullamcorper dapibus. Etiam lobortis tincidunt magna, vel mattis lorem consectetur id. Sed pulvinar nisi id risus aliquet, vel tempor velit lacinia. In hac habitasse platea dictumst. Aenean porttitor quam eu elit ullamcorper, vel bibendum orci auctor. In vel nisi sit amet enim feugiat dictum eget ac odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis vel sagittis mi. Sed id libero vel nisi facilisis finibus. Vestibulum id mi id nisl consequat congue.",
    published_at: 01/01/2023,
    user_id:1,
    category_id: 1,
    img: "https://picsum.photos/id/237/200/300",
    created_at:01/01/2023,
    updated_at: 02/02/2023)

    blog2 = Blog.create!(
    title: "My First Blog Post",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vitae ipsum et felis tincidunt hendrerit. Praesent eu libero nec tellus ullamcorper dapibus. Etiam lobortis tincidunt magna, vel mattis lorem consectetur id. Sed pulvinar nisi id risus aliquet, vel tempor velit lacinia. In hac habitasse platea dictumst. Aenean porttitor quam eu elit ullamcorper, vel bibendum orci auctor. In vel nisi sit amet enim feugiat dictum eget ac odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis vel sagittis mi. Sed id libero vel nisi facilisis finibus. Vestibulum id mi id nisl consequat congue.",
    published_at: 2023-01-01,
    user_id: 1,
    category_id: 1,
    img: "https://picsum.photos/id/237/200/300",
    created_at: "2023-01-01",
    updated_at: "2023-02-02"
    )
  
    blog3 = Blog.create!(
    title: "10 Tips for a Better Night's Sleep",
    body: "Getting enough sleep is essential for your physical and mental health. In this blog post, we'll provide you with 10 tips to help you get a better night's sleep. From establishing a sleep schedule to creating a relaxing sleep environment, we'll cover everything you need to know to improve your sleep quality.",
    published_at: 2023-02-01,
    user_id: 2,
    category_id: 2,
    img: "https://picsum.photos/id/1080/200/300",
    created_at: "2023-02-01",
    updated_at: "2023-02-05"
    )
  
     blog4 = Blog.create!(
    title: "The Benefits of Yoga for Your Health",
    body: "Yoga is an ancient practice that has become increasingly popular in recent years. In this blog post, we'll explore the many benefits of yoga for your health. From reducing stress and anxiety to improving flexibility and balance, we'll explain how yoga can help you lead a healthier and happier life.",
    published_at: 2023-02-10,
    user_id: 3,
    category_id: 3,
    img: "https://picsum.photos/id/870/200/300",
    created_at: "2023-02-10",
    updated_at: "2023-02-15"
    )
  
     blog5 = Blog.create!(
    title: "How to Build a Successful E-commerce Business",
    body: "If you're interested in starting an e-commerce business, this blog post is for you. We'll walk you through the process of building a successful online store, from choosing a product niche to marketing your business. With our tips and advice, you'll be on your way to e-commerce success in no time!",
    published_at: 2023-03-01,
    user_id: 4,
    category_id: 4,
    img: "https://picsum.photos/id/111/200/300",
    created_at: "2023-03-01",
      updated_at: "2023-03-05"
     )
  
  


#   user1 = User.create!(username:"ombese",email_address:"newtonombese1@gmail.com",password:"mahalimzuri",password_confirmation:"mahalimzuri",role:"manager")

#   user2 = User.create!(username:"irene",email_address:"irenenjuguna@gmail.com",password:"mahalimzuri",password_confirmation:"mahalimzuri",role:"client")  

  