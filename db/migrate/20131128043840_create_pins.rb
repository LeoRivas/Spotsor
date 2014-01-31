class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.text :description
      t.text :photo

      t.timestamps
    end
  end
end
