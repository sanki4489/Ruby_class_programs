class UpdateCustomerDetails
	@@total_customer = 0
	@@all_customer = []

	def initialize(options={})
		@name = options[:name] || "saras"
		@last = options[:last] || "verma"
		@@total_customer += 1
		@@all_customer << self
		puts "Customer details : #{@name} + #{@last}"
	end
	def self.update_details
		@@total_customer
	end
	def self.update_hash
		@@all_customer
	end

# class methods syntatic sugar
	#reader	
	def self.rank
		@@numbers
	end
	
	#writer
	def self.rank=array
		return unless array.is_a?(Array)
		@@numbers = array
	end
	
end

customer1 = UpdateCustomerDetails.new(name: "Sankalp", last: "verma")
customer2 = UpdateCustomerDetails.new(name: "Sankalp", last: "verma")
customer3 = UpdateCustomerDetails.new(name: "Sankalp", last: "verma")
customer4 = UpdateCustomerDetails.new(name: "Sankalp", last: "verma")
customer5 = UpdateCustomerDetails.new(name: "Sankalp", last: "verma")
customer6 = UpdateCustomerDetails.new(name: "Sankalp", last: "verma")
customer7 = UpdateCustomerDetails.new(name: "Sankalp", last: "verma")
puts UpdateCustomerDetails.update_details

#setter
UpdateCustomerDetails.rank = [1,2,3,4,5,5]
#reader
puts UpdateCustomerDetails.rank