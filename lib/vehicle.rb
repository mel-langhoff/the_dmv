require 'date'

class Vehicle
  attr_accessor :vin,
              :year,
              :make,
              :model,
              :engine,
              :registration_date,
              :plate_type

  def initialize(vehicle_details)
    @vin = vehicle_details[:vin]
    @year = vehicle_details[:year]
    @make = vehicle_details[:make]
    @model = vehicle_details[:model]
    @engine = vehicle_details[:engine]
    @registration_date = registration_date
    @plate_type = nil
  end

  def car_registration_date
    @registration_date = Date.today
  end

  def antique?
    Date.today.year - @year > 25
  end

  def electric_vehicle?
    @engine == :ev
  end

  def determine_plate_type
    if antique?
      @plate_type = :antique
    elsif electric_vehicle?
      @plate_type = :ev
    else
      @plate_type = :regular
    end
  end

      
end


