class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.intdone :team

      t.timestamps
    end
  end
end
