class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.timestamps
    end
    Post.create(title: "My first post", body: "And this is the content")
    Post.create(title: "Building Blogs", body: "1. Write some code. 2. Do some stuff.")
    Post.create(title: "Why we're awesome", body: "Because we are")
  end

  def down
    drop_table :posts
  end
end
