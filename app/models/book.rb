class Book < ApplicationRecord
    # belongs_to :author, class_name: "Author", foreign_key: "author_id"

    validates :name, :age , :authorgit , presence: true
    validates :name, length: {minimum: 2}
    validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "Only allows characters" }
    validates :name , uniqueness: true
    validates :age , numericality: { in: 0..100, only_integer: true}
    validates :email , confirmation: { case_sensitive: false } , uniqueness: {case_sensitive: false}
    validates :email_confirmation , presence: true 
    validates :email , format: { with: /\A\w+@gmail+\.com\z/, message: "only allows format xyz@gmail.com"}
end
