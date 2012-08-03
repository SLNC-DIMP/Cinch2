class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :path
      t.integer :pdfa
      t.integer :jpeg2000
      t.integer :processed
      t.integer :user_id

      t.timestamps
    end
  end
end
