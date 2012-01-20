class AddLocalizacoesToInteressados < ActiveRecord::Migration
  def change
    add_column :interessados, :vila_leopoldina, :boolean
    add_column :interessados,:lapa, :boolean
    add_column :interessados,:vila_romana, :boolean
    add_column :interessados,:vila_madalena, :boolean
    add_column :interessados,:perdizes, :boolean
    add_column :interessados, :qual, :string
  end
end
