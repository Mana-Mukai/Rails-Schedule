class CreateNews < ActiveRecord::Migration[6.1]
  def change
    create_table :news do |t|
      t.string :title
      t.datetime :starttime
      t.datetime :endingtime
      t.string :detail

      t.timestamps
    end
  end
end
