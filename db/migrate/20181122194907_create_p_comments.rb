class CreatePComments < ActiveRecord::Migration[5.2]
  def change
    create_table :p_comments do |t|
      t.integer :user_id
      t.integer :topic_id
      t.text :t_content

      t.timestamps
    end
  end
end
