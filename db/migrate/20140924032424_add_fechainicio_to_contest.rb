class AddFechainicioToContest < ActiveRecord::Migration
  def change
    add_column :contests, :fechainicio, :datetime
  end
end
