### Data mining

library(rtweet)

corona <- search_tweets2(
  c("corona", "tentara Allah"), n=18000, include_rts =FALSE, retryonratelimit=TRUE
)
