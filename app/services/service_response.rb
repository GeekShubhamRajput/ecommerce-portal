# app/services/service_response.rb
class ServiceResponse
  attr_reader :success, :message, :payload, :errors

  def initialize(success:, message:, payload: nil, errors: [])
    @success = success
    @message = message
    @payload = payload
    @errors = errors
  end

  def self.success(message:, payload: nil)
    new(success: true, message: message, payload: payload)
  end

  def self.error(message:, errors: [])
    new(success: false, message: message, errors: errors)
  end

  def success?
    success
  end
end
