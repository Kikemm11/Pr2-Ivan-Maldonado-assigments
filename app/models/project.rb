class Project < ApplicationRecord
  belongs_to :client
  belongs_to :status

  def self.code_project(code_project)

  	code = Project.find_by_code(code_project)

  	if !code.nil?
  		Client.find_by_id(code.id).name
  	end

  end
  	
end
