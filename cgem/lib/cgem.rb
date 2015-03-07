if File.exist?("lib/cgem/cgem.so") #|| File.exist?("lib/cgem/cgem.bundle")
  # Development
  require "cgem/cgem.so"
else
  # Gem
  require "cgem.so"
end