class Author < ApplicationRecord #can now communicate with the db; 
validates :name, presence: true
end
#if you save this to a db, there has to be 
#a value for the 'name'