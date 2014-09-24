class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :photo
      t.string :description

      t.timestamps
    end
  end
end
