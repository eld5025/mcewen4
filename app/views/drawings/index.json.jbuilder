json.array!(@drawings) do |drawing|
  json.extract! drawing, :id, :newdrawing, :olddrawing, :year, :description, :width, :length, :shape, :subset, :step, :widthinches, :lengthinches, :brand
  json.url drawing_url(drawing, format: :json)
end
