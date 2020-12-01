context("")

test_that("daylightData", {
  expect_is(daylightData, "data.frame")
  expect_equal(ncol(daylightData), 3)
})

test_that("daylightData2", {
  expect_is(daylightData2, "data.frame")
  expect_equal(ncol(daylightData2), 3)
})