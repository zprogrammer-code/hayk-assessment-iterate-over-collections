require 'pry'
class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this

def list(companies)
    list_of_companies = []
    companies.map{ |company|
     list_of_companies << "#{company.name}, #{company.size}"
}
list_of_companies
end

def combine_company_sizes(companies)
total_size = []
    companies.map{ |company|
    total_size << company.size
}
total_size.reduce(0){ |sum, each_size|
sum + each_size
}
end

def filter_to_show_size_over_100(companies)
  size_over_100 =  companies.select{|company| company.size > 100}
  list(size_over_100)
 end

 def find_company_named_Beta(companies)
 beta = companies.find{|company|  if company.name == "Beta"
return company.name
 end
}
 end

 def the_largest_company(companies)
companies.max_by do |company|
company.size
end
 end

 def sort_companies_max_to_min(companies)
companies.sort {|a, b| list(companies).max <=> list(companies).min}
 end
