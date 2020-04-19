require './string_display'
require './side_border'
require './full_border'

b1 = StringDisplay.new("Hello, world.")
b2 = SideBorder.new(b1, "#")
b3 = FullBorder.new(b2)
b1.show
b2.show
b3.show

b4 = SideBorder.new(
  FullBorder.new(
    FullBorder.new(
      SideBorder.new(
        FullBorder.new(
          StringDisplay.new("Have a good day!")
        ),
        "*"
      )
    )
  ),
  "/"
)
b4.show