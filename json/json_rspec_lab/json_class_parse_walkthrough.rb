require 'json'

# This walkthrough gives an example of iterating

class ParseJson

  attr_accessor :json_file, :date, :base, :rates, :rate_keys, :rate_values

  # Initialise the read and parsing of the JSON file
  # When providing an argument to an initialise method means you must give class initialisation with the argument

  def initialize json_file
    @json_file = JSON.parse(File.read(json_file))
    @date = @json_file["date"]
    @base = @json_file["base"]
    @rates = @json_file["rates"]
    @rate_keys = @json_file["rates"].keys
    @rate_values = @json_file["rates"].values
  end

  def number_of_rate_keys
  	self.rate_keys.count
  end

  def number_of_rate_values
  	self.rate_values.count
  end

end

# probably should use these methods below
# just felt this looked cleaner

  # def get_base_value
  # 	@json_file["base"]
  # end

  # def get_rates
  # 	@json_file["rates"]
  # end

  # def get_date
  # 	@json_file["date"]
  # end

  



