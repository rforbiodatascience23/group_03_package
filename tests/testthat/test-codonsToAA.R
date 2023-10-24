test_that("get correct AA from codons", {
  expect_equal(codonsToAA(c('UUU','UGU','CAU')), 'FCH')
})
