class RemoveCheckFromAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :answers, :check, :boolean
  end
end
