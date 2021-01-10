class PlayerSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :score
  end