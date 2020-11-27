class Author < ActiveRecord::Base
    validates :name, presence: { message: "Name cannot be blank." }
    validates :email, uniqueness: { message: "Email must be unique." }
    validates :phone_number, length: { is: 10, message: "Phone number must be %{count} digits long." }
end
