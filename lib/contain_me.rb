require "contain_me/version"

module ContainMe
  class Error < StandardError; end

  # main method
  def self.in_pocket?(obj, pocket)
  	case pocket
  	when Array 
  		return pocket.include?(obj) 
  	when Range
  		return pocket.include?(obj) 
  	when Hash 
      return pocket.has_key?(obj) || pocket.has_value?(obj)
    when Integer 
      return pocket.to_s.include?(obj.to_s) 
    when Float 
      return pocket.to_s.include?(obj.to_s) 
    when String 
      return pocket.to_s.include?(obj.to_s) 
    when TrueClass 
      return pocket.to_s.include?(obj.to_s) 
    when FalseClass 
      return pocket.to_s.include?(obj.to_s) 
    when Symbol 
      return pocket.to_s.include?(obj.to_s) 
    when Number 
      return pocket.to_s.include?(obj.to_s) 
    else
    	return false
    end
  end
end
