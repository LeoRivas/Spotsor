class AddMinidescToContest < ActiveRecord::Migration
  def change
    add_column :contests, :minidesc, :string
  end
end
