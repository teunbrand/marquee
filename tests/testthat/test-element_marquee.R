test_that("element_marquee() inserts aesthetics into the style", {

  skip_if_not(getRversion() >= "4.3")

  elem <- element_marquee("serif", colour = "red", size = 6, margin = ggplot2::margin(1, 1, 1, 1))
  elem <- element_grob.element_marquee(elem, "test", hjust = "left", vjust = "center", margin_x = TRUE, margin_y = TRUE)
  expect_equal(elem$text$family[1], "serif")
  expect_equal(elem$text$color[1], "red")
  expect_equal(elem$text$size[1], 6)
  expect_equal(elem$text$padding_bottom, c(1, 0))
})
