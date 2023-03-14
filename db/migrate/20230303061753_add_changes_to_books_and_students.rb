class AddChangesToBooksAndStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :age, :string
    rename_column :students, :name, :student_name 
    remove_timestamps :students
  end
end
