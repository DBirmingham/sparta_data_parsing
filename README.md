# sparta_data_parsing

## Introduction

This set of work involves looking into understanding data, how to use and access it in new ways and using all of this alongside rspec. Within this repo you will find examples of array, hash and json data usage and manipulation.

## Getting started

Simply clone the repository to your computer to get started with this rspec introduction. The rspec gem should be included with base Ruby. Checkout the rspec [documentation](https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers) to brush up on general use of rspec.

### Prerequisites

This was done in Ruby 2.4.0 older versions may not be compatible.
see [here](https://stackoverflow.com/questions/38194032/how-to-update-ruby-version-2-0-0-to-the-latest-version-in-mac-osx-yosemite) for instructions on updating your Ruby version (on Mac)

## Running Tests

In general run the following command in your terminal to get the results of your rspec tests.
```
rspec file_name.rb
```
If, however, you first run
```
rspec --init
```
as we have in all examples other than the rspec matchers folder, a spec folder will be created. The rspec command will look for this spec folder and run all ruby test spec files within this folder as well as use the spec_helper file, used to configure rspec layout and function. Note, spec files must end with \_spec

## Built With

Ruby and rspec!