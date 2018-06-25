class Cat < ApplicationRecord
	validates_presence_of :name, :gender
end
