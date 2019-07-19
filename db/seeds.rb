User.create!([
  {email: "zair@blog.com", encrypted_password: "$2a$11$fzT19fXpoocn./M11rzEfefyJqaEZ0eFPHhzt6Vu2lC/WNUHBZ.y2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil},
  {email: "user2@blog.com", encrypted_password: "$2a$11$KP2/fDfKC.lzI08TdkVq.uU6NuWWBiUDzwOZ9GX8tZL7fecHjOKya", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])
Comment.create!([
  {name: "DaveDev", message: "Personally, I like the ruby because of its robustness and flexibility.", post_id: 17},
  {name: "Fresher", message: "but for newcomers, it is very hard to digest the smartness and conventions of the ROR, and I fell dumb in beginning.", post_id: 17},
  {name: "Nooby", message: "what a biseness, I would say", post_id: 18},
  {name: "zair", message: "who cares!! unless you are a gambler :)", post_id: 18},
  {name: "PureSoul", message: "The best on earth.Rohail Hayat is the best composer of all time. <3", post_id: 20},
  {name: "PeaceArt", message: "can't find another match !", post_id: 20},
  {name: "pro", message: "it is like an Art for me. Best framework.", post_id: 19}
])
Post.create!([
  {title: "Roar the ROR", body: "#Don't Repeat Yourself:\r\n DRY is a principle of software development which states that \"Every piece of knowledge must have a single, unambiguous, authoritative representation within a system.\" By not writing the same information over and over again, our code is more maintainable, more extensible, and less \r\n#Convention Over Configuration:\r\nRails have opinions about the best way to do many things in a web application, and defaults to this set of conventions, rather than require that you specify minutiae through endless configuration files.\r\n\r\n", user_id: 1},
  {title: "Bug of the Match", body: "The umpires made an \"error of judgement\" in awarding six runs, instead of five, to England for the overthrow that hit Ben Stokes' bat and ran to the boundary, says Simon Taufel, confirming the story that ESPNcricinfo broke right after the World Cup 2019 final. Currently part of the MCC's laws sub-committee that makes the rules governing cricket, Taufel told foxsports.com.au that England should have been awarded five runs, not six.\r\n\r\n\"It's a clear mistake.. it's an error of judgment,\" Taufel said. \"They (England) should have been awarded five runs, not six.\"", user_id: 1},
  {title: "Do the Laravel", body: "Laravel is a web application framework with an expressive, elegant syntax. We believe development must be an enjoyable, creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as authentication, routing, sessions, and caching.\r\n\r\nLaravel aims to make the development process a pleasing one for the developer without sacrificing application functionality. Happy developers make the best code. To this end, we've attempted to combine the very best of what we have seen in other web frameworks, including frameworks implemented in other languages, such as Ruby on Rails, ASP.NET MVC, and Sinatra.", user_id: 2},
  {title: "Coke Studio", body: "Coke Studio is a Pakistani television program and international music franchise which features live studio-recorded music performances by established and emerging artists. It is the longest-running annual television music show in Pakistan since 2008.", user_id: 2}
])
#-------------------------------------