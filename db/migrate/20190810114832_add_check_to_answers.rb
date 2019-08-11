class AddCheckToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :check, :boolean, default: false, null: false
  end
end
