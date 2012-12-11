# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

vendors = Vendor.create!([
	{:name => "EnergyMicro"},
	{:name => "Nordic"},
	{:name => "Fingerprints"},
	{:name => "Nitgen"},
	{:name => "Austria Microsystems"},
	{:name => "CSR"},
	{:name => "Microchip"},
	{:name => "Silicon Labs"},
	{:name => "Atmel"},
	{:name => "NXP"}
])

distributors = Distributor.create!([
	{:name => "Digikey", :email => "digikey@digikey.com", :phone => "(48) 8548-1536"},
	{:name => "Mouser", :email => "mouser@mouser.com", :phone => "(48) 8548-1536"},
	{:name => "Fingertech", :email => "contato@fingertech.com.br", :phone => "(48) 8548-1536"},
	{:name => "Alphatech", :email => "alpha@tech.com", :phone => "(48) 8548-1536"}
])

agents = Agent.create!([
	{:name => "Julio Laghetto", :email => "julio@alphatech.com.br", :phone => "(48) 45236-4587", :role => "Pessoal", :distributor => distributors[3]},
	{:name => "Victor Domingues", :email => "victor@fingertech.com.br", :phone => "(48) 45236-4587", :role => "Pessoal", :distributor => distributors[2]}
])

part = Part.create!({:amount => 10, :description => "", :last_price => 2.5, :last_volume => 1000, :ncm => "89432725745", :place => "A-12", :title => "EFM32G890F128"})

part.vendors << vendors[0]