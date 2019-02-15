class AddAliasToTranslations < ActiveRecord::Migration[5.2]
  def change
    add_column :translations, :alias, :string
  end
end
