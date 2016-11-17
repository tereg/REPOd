class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string   :title
      t.string   :description
      t.integer  :media_type
      t.string   :url
      t.integer  :user_id
      t.boolean  :verified, default: false


      t.timestamps
    end
  end
end
