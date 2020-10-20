# frozen_string_literal: true

# Raises "bad ordering of magic comments"
# frozen_string_literal: true
# encoding: ascii

# Raises "use of deprecated BigDecimal.new"
a = { 'hello' => 'world', 'testing' => BigDecimal.new(123.456, 3) }

# Raises "`while`/`until` detected in `begin` block"
begin
  do_something
end while a == b

# Raises "multiple comparison detected"
x < y < z
10 <= x <= 20

# Raises "empty rescue block detected"
begin
  bar
rescue
end

# Raises "unused method arguments detected"
def some_method(bar)
  puts 'Hello'
end

# Raises "unreachable code detected"
def some_method
  return
  do_something
end

# Raises "Deprecated way of initializing OpenSSL::Cipher and OpenSSL::Digest"
OpenSSL::Cipher::AES.new(128, :GCM)

# Raises "put empty method definitions on a single line"
def some_method
end
