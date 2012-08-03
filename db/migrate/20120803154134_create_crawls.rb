class CreateCrawls < ActiveRecord::Migration
  def change
    create_table :crawls do |t|
      t.string :url
      t.integer :pdfa
      t.integer :jpeg2000
      t.integer :processed
      t.integer :user_id

      t.timestamps
    end
  end
end
