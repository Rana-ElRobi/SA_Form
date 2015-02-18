class AddingRelations < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.belongs_to :project, index: true
    end

    change_column_null    :users, :name, false
    change_column_default :users, :name, ""
    change_column_default :users, :team, false

    change_column_null    :projects, :name, false
    change_column_default :projects, :name, ""
    change_column_default :projects, :taken, false
  end
end
