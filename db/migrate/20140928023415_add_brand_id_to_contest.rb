class AddBrandIdToContest < ActiveRecord::Migration
  def change
    add_column :contests, :brand_id, :string
  end
end
