class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.datetime :post_date

      t.timestamps
    end
  end
end
