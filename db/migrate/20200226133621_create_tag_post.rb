class CreateTagPost < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_posts do |t|
      t.integer :post_id
      t.integer :tag_id
    end
  end
end
