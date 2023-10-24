test_that("DNA is converted to expected RNA sequence", {
  expect_equal(dnaToRna("ATGCAAATGCGC"), "AUGCAAAUGCGC")
})
