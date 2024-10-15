class BreweryAddWebsite < ActiveRecord::Migration[7.1]
  def change
    add_column :breweries, :website, :string
  end
end
