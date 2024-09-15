class CreateJoinTableTipUser < ActiveRecord::Migration[5.1]
  def change
    create_join_table :tips, :users do |t|
      # t.index [:tip_id, :user_id]
      # t.index [:user_id, :tip_id]
    end
  end
end
