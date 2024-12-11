class AddReview < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.timestamps
      t.integer :platform_id
      t.string :title
      t.belongs_to :user, foreign_key: true
      t.belongs_to :project, null: false, foreign_key: true
    end

    create_table :review_assignments do |t|
      t.timestamps
      t.belongs_to :user
      t.belongs_to :review
    end

    create_table :review_performs do |t|
      t.timestamps
      t.belongs_to :user
      t.belongs_to :review
    end

  end
end
