class BoardSerializer
  include FastJsonapi::ObjectSerializer
  # byebug
  attributes :name, :players
end

