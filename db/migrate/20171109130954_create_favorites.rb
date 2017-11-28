class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      
      t.references :micropost, index: true, foreign_key: true
      
      t.timestamps
      
      t.index [:user_id, :micropost_id], unique: true
    end
  end
end
