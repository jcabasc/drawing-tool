module MatrixFixtureSupport
    def response_canvas
    [
      ["", "", "", "", "", "", "", "", "", ""],
      ["", "", "", "", "", "", "", "", "", ""],
      ["", "", "", "", "", "", "", "", "", ""],
      ["", "", "", "", "", "", "", "", "", ""]
    ]
  end

  def response_line_1
    [
      ["", "", "", "", "", "", "", "", "", ""],
      ["x", "x", "x", "x", "x", "x", "", "", "", ""],
      ["", "", "", "", "", "", "", "", "", ""],
      ["", "", "", "", "", "", "", "", "", ""]
    ]
  end

  def response_line_2
    [
      ["", "", "", "", "", "", "", "", "", ""],
      ["x", "", "", "", "", "", "", "", "", ""],
      ["x", "", "", "", "", "", "", "", "", ""],
      ["x", "", "", "", "", "", "", "", "", ""]
    ]
  end

  def response_diagonal_line
    [
      ["x", "", "", "", "", "", "", "", "", ""],
      ["", "x", "", "", "", "", "", "", "", ""],
      ["", "", "x", "", "", "", "", "", "", ""],
      ["", "", "", "x", "", "", "", "", "", ""]
    ]
  end

  def response_rectangle
    [
      ["", "", "", "", "", "x", "x", "x", "x", "x"],
      ["", "", "", "", "", "x", "", "", "", "x"],
      ["", "", "", "", "", "x", "x", "x", "x", "x"],
      ["", "", "", "", "", "", "", "", "", ""]
    ]
  end

  def response_area_1
    [
      ["o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "x", "x", "x", "x", "x"],
      ["x", "x", "x", "x", "x", "x", "o", "o", "o", "o", "o", "o", "o", "o", "o", "x", "", "", "", "x"],
      ["", "", "", "", "", "x", "o", "o", "o", "o", "o", "o", "o", "o", "o", "x", "x", "x", "x", "x"],
      ["", "", "", "", "", "x", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o", "o"]
    ]
  end

  def response_area_2
    [
      ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "x", "x", "x", "x", "x"],
      ["x", "x", "x", "x", "x", "x", "", "", "", "", "", "", "", "", "", "x", "s","s", "s", "x"],
      ["", "", "", "", "", "x", "", "", "", "", "", "", "", "", "", "x", "x", "x", "x", "x"],
      ["", "", "", "", "", "x", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    ]
  end

  def response_area_3
    [
      ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "x", "x", "x", "x", "x"],
      ["x", "x", "x", "x", "x", "x", "", "", "", "", "", "", "", "", "", "x", "", "", "", "x"],
      ["s", "s", "s", "s", "s", "x", "", "", "", "", "", "", "", "", "", "x", "x", "x", "x", "x"],
      ["s", "s", "s", "s", "s", "x", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    ]
  end
end