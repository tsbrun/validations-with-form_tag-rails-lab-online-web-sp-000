class Post < ActiveRecord::Base
    validates :title, presence: { message: "Post must have a title." }
    validates :content, length: { minimum: 100, message: "Content must be at least %{count} characters." }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "Category must be 'Fiction' or 'Non-Fiction'." }
end
