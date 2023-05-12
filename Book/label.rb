class Label
  attr_reader :id, :title, :color, :items

  def initialize(title, color)
    @id = id || Random.rand(1..1000)
    @title = title
    @color = color
    @items = []
  end

  def add_label(item)
    @items << item unless @items.include?(item)
    item.label = self unless item.label == self
  end
end
