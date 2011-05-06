class Booking
  include ActiveModel::Validations

  validates_presence_of :name, :email, :phone, :details 
  # to deal with form, you must have an id attribute
  attr_accessor :id, :name, :email, :phone, :details

  def initialize(attributes = {})
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
    @attributes = attributes
  end

  def read_attribute_for_validation(key)
    @attributes[key]
  end

  def to_key; end

  def save
    if self.valid?
      Notifier.booking_notification(self).deliver
      return true
    end
    return false
  end
  
end