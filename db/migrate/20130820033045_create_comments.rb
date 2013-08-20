class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commentable_type
      t.string :commentable_id
      t.text :message

      t.timestamps
    end
  end
end
