class City < ActiveRecord::Base
    validates :name, :presence => {message: "#{MISSING_PARAMETERS_ID}"} , :on => :create

end
