context("Checking p-value function")

test_that("signif", {
  expect_equal(signif(0.005), 0.005)
})

test_that("signif",{
  expect_message(signif(0.25))
})
