class ChangeStatusType < ActiveRecord::Migration[8.0]
  def up
    change_column :entities, :status, :boolean, using: 'status::boolean', default: false
  end

  def down
    change_column :entities, :status, :string, sing: 'status::tring'
  end
end
