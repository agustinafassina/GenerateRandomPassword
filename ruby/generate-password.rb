require "securerandom"

def generate_password(length = 16)
  charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-+=[]{}|;:,.<>?"

  Array.new(length) { charset[SecureRandom.random_number(charset.length)] }.join
end

puts "Password generated with ruby: #{generate_password(16)}"
