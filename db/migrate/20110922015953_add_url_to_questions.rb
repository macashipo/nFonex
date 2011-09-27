class AddUrlToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :url_question, :string
  end

  def self.down
    remove_column :questions, :url_answers
    remove_column :questions, :url_question
  end
end
