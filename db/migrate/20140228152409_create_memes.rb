class CreateMemes < ActiveRecord::Migration
  def change
    create_table :memes do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
