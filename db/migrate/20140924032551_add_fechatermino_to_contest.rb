class AddFechaterminoToContest < ActiveRecord::Migration
  def change
    add_column :contests, :fechatermino, :datetime
  end
end
