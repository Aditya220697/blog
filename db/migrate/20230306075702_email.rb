class Email < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :email, :string
    add_column :books, :email_confirmation, :string
  end
end
