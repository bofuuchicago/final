# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all

User.create  id: 1,
             username: 'flying pig',
             password: '1',
             email: 'pig@uchicago.edu',
             image: 'http://tp3.sinaimg.cn/1442054902/50/40002770510/1'

User.create  id: 2,
             username: 'king',
             password: '1',
             email: 'king@uchicago.edu',
             image: 'http://tp4.sinaimg.cn/1438513755/180/40008758792/1'
             
User.create  id: 3,
             username: 'Bo Fu',
             password: '1',
             email: 'bof@uchicago.edu',
             image: 'http://www.theaureview.com/sites/default/files/lee%20hom.gif'


Tweet.delete_all

Tweet.create  id: 1,
              content: 'His song is so amazing... Leehom Wang!',
              date: 1440538042,
              user_id: "1",
              image: "https://upload.wikimedia.org/wikipedia/commons/4/44/Leehom_xmas_concert_at_piano.jpg"

Tweet.create  id: 2,
              content: 'Who knows this place? Its fascinating. Really hope I can go someday',
              date: 1440538042,
              user_id: "2",
              image: "https://www.ciee.org/teach/images/home/china.jpg" 


Tweet.create  id: 3,
              content: "This is my hometown Chengdu. It's home to giant panda. Chengdu is famous for people's relaxing life style. Welcome to Chengdu!",
              date: 1440538042,
              user_id: "3" ,
              image: "http://www.telegraph.co.uk/travel/hotel/article140475.ece/ALTERNATES/w620/chengdu8.jpg"

Tweet.create  id: 4,
              content: 'I like giant pandas. They look so cute!!!! I hope I can have one at home T_T',
              date: 1440538042,
              user_id: "1",
              image: "http://images.mychinatours.com/tour/highlights/chengdu/chengdu-panda.jpg"  

Tweet.create  id: 5,
              content: 'What do 1989 in this picture mean? Does it mean this photo was taken in 1989? I do not believe that‬',
              date: 1440538042,
              user_id: "2",
              image: "http://s.newsweek.com/sites/www.newsweek.com/files/2014/10/26/image-1989.png"   

Tweet.create  id: 6,
              content: 'I watch this movie again and again. The God Father. Everyone should see this great movie!',
              date: 1440538042,
              user_id: "1",
              image: "https://d12vb6dvkz909q.cloudfront.net/uploads/galleries/24681/the-godfather-1.jpg"

Tweet.create  id: 7,
              content: 'What a cute cat!',
              date: 1440538042,
              user_id: "2",
              image: "http://animalfair.com/wp-content/uploads/2014/06/little_cute_cat_1920x1080.jpg" 


Tweet.create  id: 8,
              content: "Haven't gone to gym for a long time. Fat and ungly... Who can help me",
              date: 14405380425,
              user_id: "3" ,
              image: "http://www.lady8844.com/h031/h06/img201309101010231.jpg" 

Tweet.create  id: 9,
              content: 'Want a boy fiend!',
              date: 1440538042,
              user_id: "1",
              image: "http://cimage.tianjimedia.com/uploadImages/2013/177/HA0J8M4H6PEI.jpg"  

Tweet.create  id: 10,
              content: 'Cant like it more‬',
              date: 1440538042,
              user_id: "2",
              image: "http://www.mentorpl.org/wp-content/uploads/2015/06/plm20ilpgyltaarfswcs.jpg"                          


Comment.delete_all

Comment.create  id: 1,
                content: 'What is your phone number?',
                date: 1440538042,
                tweet_id: 1,
                user_id: 1

Comment.create  id: 2,
                content: 'Leehom!',
                date: 1440538042,
                tweet_id: 1,
                user_id: 2


Comment.create  id: 3,
                content: 'My favorite singer',
                date: 1440538042,
                tweet_id: 1,
                user_id: 3


Comment.create  id: 4,
                content: 'Did you listen to his song Forever Love? It is definitely beautiful',
                date: 1440538042,
                tweet_id: 1,
                user_id: 3

Comment.create  id: 5,
                content: 'I think it is a temple. Not sure where it is',
                date: 1440538042,
                tweet_id: 2,
                user_id: 1

Comment.create  id: 6,
                content: 'It is called Jingyun temple near the Xiling snow montain',
                date: 1440538042,
                tweet_id: 2,
                user_id: 2


Comment.create  id: 7,
                content: 'I like the style of this picture',
                date: 1440538042,
                tweet_id: 3,
                user_id: 3


Comment.create  id: 8,
                content: 'I miss my home. When can I visit my Chengdu again?',
                date: 1440538042,
                tweet_id: 3,
                user_id: 3


Follow.delete_all

Follow.create   fan_id: 1,
                star_id: 2,
                id: 1  

Follow.create   fan_id: 1,
                star_id: 3,
                id: 2   

Follow.create   fan_id: 2,
                star_id: 1,
                id: 3    

Follow.create   fan_id: 2,
                star_id: 3,
                id: 4   

Follow.create   fan_id: 3,
                star_id: 2,
                id: 5    

Follow.create   fan_id: 3,
                star_id: 1,
                id: 6    

                                                                                                                
Message.delete_all

Message.create  id:1,
                content: "Hi! Can I add you contact?",
                date: 1440538042,
                sender_id: 3,
                receiver_id: 2,
                connection_id: 1,
                is_read: false

Message.create  id:2,
                content: "It was nice to meet you yesterday. Can we share phone number?",
                date: 1440538042,
                sender_id: 2,
                receiver_id: 3,
                connection_id: 1,                
                is_read: false

Message.create  id:3,
                content: "Ok. Sure",
                date: 1440538042,
                sender_id: 3,
                receiver_id: 2,
                connection_id: 1,                
                is_read: false     

Message.create  id:4,
                content: "My phone number is 312-778-1354",
                date: 1440538042,
                sender_id: 2,
                receiver_id: 3,
                connection_id: 1,                
                is_read: false   

Message.create  id:5,
                content: "I have sent you a message. DId you receive that",
                date: 1440538042,
                sender_id: 3,
                receiver_id: 1,
                connection_id: 2,
                is_read: false

Message.create  id:6,
                content: "Nope. There must be something wrong",
                date: 1440538042,
                sender_id: 1,
                receiver_id: 3,
                connection_id: 2,                
                is_read: false

Message.create  id:7,
                content: "Oh, I sent to another guy ... sign",
                date: 1440538042,
                sender_id: 3,
                receiver_id: 1,
                connection_id: 2,                
                is_read: false     

Message.create  id:8,
                content: "Haha, you should apologize to him(her)",
                date: 1440538042,
                sender_id: 1,
                receiver_id: 3,
                connection_id: 2,                
                is_read: false                                           


Connection.delete_all

Connection.create id:1,
                  user_one_id:3,
                  user_two_id:2,
                  date: 1440538042,
                  last_message: "connection1"

Connection.create id:2,
                  user_one_id:1,
                  user_two_id:3,
                  date: 1440538042,
                  last_message: "connection2"    
      