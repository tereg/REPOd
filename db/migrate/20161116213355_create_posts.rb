class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string   :title
      t.string   :description
      t.string   :media_type
      t.integer  :teacher_id
      t.integer  :student_id


      t.timestamps
    end
  end
end
