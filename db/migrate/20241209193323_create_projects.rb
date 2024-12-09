class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.timestamps

      t.string :link
      t.string :name
      t.string :auth_token
      t.string :platform
      t.belongs_to :user, null: false, foreign_key: true
    end
  end
end
