class Client < ApplicationRecord
  belongs_to :company
  has_many :projects

  #Obtaining the clients from one company using the company name

  def self.company_name(company_name)

  	company = Company.find_by_name(company_name)

  	if !company.nil?
  		Client.where(company_id: company.id)
  	end
  end



end
