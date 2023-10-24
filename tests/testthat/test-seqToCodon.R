test_that("Sequence are split in to pairs of three", {
  expect_equal(seqToCodon('ATTTCGAAA'), c('ATT', 'TCG', 'AAA'))
})

test_that("if sequence are not in pairs of three", {
  expect_equal(seqToCodon('ATTTCGAAAT'), c('ATT', 'TCG', 'AAA'))
})
