class BrewerytypeChange < ActiveRecord::Migration[7.1]
  def change
    rename_column :breweries, :type, :brewery_type
  end
end
