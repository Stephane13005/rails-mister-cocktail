class AddUrlToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :string_url, :string
  end
end
