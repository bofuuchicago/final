# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

User.create  id: 1,
             username: 'bof',
             password: 'bof',
             email: 'bof@uchicago.edu',
             image: 'https://scontent-iad3-1.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/482782_105604899625870_304502790_n.jpg?oh=44a5d6596a9ad452c94e8aeff734012f&oe=563FDF31'


Tweet.delete_all

Tweet.create  id: 1,
              content: 'Lous challenge anyone???????',
              date: 1425069955,
              user_id: "1",
              image: "http://ww1.sinaimg.cn/bmiddle/6973530djw1esi5icwcmuj20ji0yojua.jpg"

Tweet.create  id: 2,
              content: 'An entire team of Apple developers was there 24/7 to help, so that was a wonderful resource to learn Swift and Objective C in a weekend.',
              date: 1425069957,
              user_id: "1",
              image: "http://ww4.sinaimg.cn/square/87246b09jw1esguiqhsjpj20zk0qodot.jpg"


Tweet.create  id: 3,
              content: 'CSIL is once again selling discounted used computers and monitors for university students and staff! Models for sale are MacPro(2010), Shuttle, and 24" Apple LED Cinema Display. First come, first serve.',
              date: 1425069955,
              user_id: "1" ,
              image: "http://ww1.sinaimg.cn/thumbnail/6ac4d14dgw1esi2hn6vmdj20dw0dwdhr.jpg"

Tweet.create  id: 4,
              content: 'Went to an alum potluck, being the only student showing up with four alums around, which is pretty cool and actually the best alum event so far!',
              date: 1425069955,
              user_id: "1",
              image: "http://ww3.sinaimg.cn/bmiddle/4a23d069jw1esi60jgix6j20v815owoq.jpg"

Tweet.create  id: 5,
              content: 'Wish I could graduate again ‪#‎BadgerMemory‬',
              date: 1425963490,
              user_id: "1",
              image: "http://ww4.sinaimg.cn/square/005wlOCojw1esi2tymbxjj30zk0k042w.jpg"