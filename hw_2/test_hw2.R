source("./data_manag_hw/data_manag_hw.R")
library(testthat)

lion_df <- read.csv("https://raw.githubusercontent.com/Gharv/Questions/master/lionCrater.csv")
rhino_df <- read.csv("https://raw.githubusercontent.com/Gharv/Questions/master/blackRhinoCrater.csv")

test_that("hw answers", {
  
  expect_equal(lion, lion_df)
  expect_equal(rhino, rhino_df)
  expect_equal(lion_str, str(lion_df))
  expect_equal(way3, NA)
  expect_equal(answer23, lion_df[5,])
  expect_equal(answer24, head(rhino_df))
  expect_equal(answer25, tail(rhino_df))
  expect_equal(answer26, nrow(rhino_df))
  expect_equal(answer27, ncol(rhino_df))
  expect_equal(lion2, subset(lion_df, lion_df$Year > 1979))
  expect_equal(rhino2, subset(rhino_df, rhino_df$Year < 1993))
  expect_equal(lion3, subset(lion_df, lion_df$Population > 50))
  expect_equal(lion3_rows_num, nrow(lion3))
  expect_equal(rhino3, subset(rhino_df, rhino_df$Population < 12))
  expect_equal(rhino3_rows_num, nrow(rhino3))
  
})

