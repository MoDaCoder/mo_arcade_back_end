class BoardSerializer
  include FastJsonapi::ObjectSerializer
  # byebug
  attributes :name, :img
end

