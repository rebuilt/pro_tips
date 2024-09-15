class CreateTips < ActiveRecord::Migration[5.1]
  def change
    create_table :tips do |t|
      t.string :title
      t.string :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
