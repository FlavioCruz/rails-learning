class RenameTypeToKind < ActiveRecord::Migration[6.0]
  def change
    rename_column :planets, :type, :kind
  end
end
