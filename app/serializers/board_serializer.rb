class BoardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :score, :players
end
