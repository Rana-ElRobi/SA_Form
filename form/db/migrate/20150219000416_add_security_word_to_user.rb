class AddSecurityWordToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :pwd, null: false, default: ""
    end
  end
end
