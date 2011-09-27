class AddUrlanswerToAnswers < ActiveRecord::Migration
  def self.up
    add_column :answers, :url_answer, :string
  end

  def self.down
    remove_column :answers, :url_answer
  end
end
