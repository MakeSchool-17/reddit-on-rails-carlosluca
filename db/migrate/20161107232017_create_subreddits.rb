class CreateSubreddits < ActiveRecord::Migration[5.0]
  def change
    create_table :subreddits do |t|
      t.string :name
      t.string :title
      t.string :description
      t.string :sidebar

      t.timestamps
    end
  end
end
