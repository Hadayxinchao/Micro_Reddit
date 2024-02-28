1. Users
username: string (unique, presence)
email: string (unique, presence)
password: string (hashed and salted)
id: integer (primary key)
created_at: datetime
updated_at: datetime
has_many :posts
has_many :comments through :posts

2. Posts 
title: string (presence)
url: string (optional, for link posts)
body: text (for text posts)
user_id: integer (foreign key, references Users)
id: integer (primary key)
created_at: datetime
updated_at: datetime
belongs_to :user
has_many :comments

3. Comments
body: text (presence)
user_id: integer (foreign key, references Users)
post_id: integer (foreign key, references Posts)
parent_id: integer (optional, for nested comments, references Comments)
id: integer (primary key)
created_at: datetime
updated_at: datetime
belongs_to :user
belongs_to :comment
belongs_to :parent, class_name: "Comments", optional: true
has_many :replies, class_name: "Comments", foreign_key: 'parent_id'