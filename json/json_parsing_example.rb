require 'json'

json = File.read('json_example.json')

# p json
# returned as a string by default from the .read method on File object

json_parse = JSON.parse(json)

# Using the json gem we can convert the string to a hash which we can then access

p json_parse
p json_parse.class