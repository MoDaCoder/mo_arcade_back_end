class PlayerSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :scores
  end