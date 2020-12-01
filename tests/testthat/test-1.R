context("")

test_that("daylightData", {
  expect_equal(ncol(pdHFSA_inc), ncol(pdMGSA_inc))
})