### Data mining (28/02/2020)

library(rtweet)

corona <- search_tweets(
  "corona OR coronavirus AND doa OR prayer",
  n=18000,
  include_rts =FALSE,
  retryonratelimit = TRUE
)

corona_id <- search_tweets(
  "corona OR coronavirus AND indonesia",
  n=100000,
  include_rts =FALSE,
  retryonratelimit = TRUE
)

corona_trust <- search_tweets(
  "corona OR coronavirus AND percaya OR terbuka OR tertutup OR menutupi OR jujur OR transparan OR bohong",
  n=100000,
  include_rts =FALSE,
  retryonratelimit = TRUE
)


ts_plot(corona_id, "hours")
ts_plot(corona_trust, "hours")

data.table::fwrite(corona, file="corona_doa_1.csv")
data.table::fwrite(corona_id, file="corona_indonesia_1.csv")
data.table::fwrite(corona_trust, file="corona_indonesia_1.csv")


### Data mining (10/03/2020)

library(rtweet)

corona <- search_tweets(
  "corona OR coronavirus AND doa OR prayer",
  n=18000,
  include_rts =FALSE,
  retryonratelimit = TRUE
)

corona_id <- search_tweets(
  "corona OR coronavirus AND indonesia",
  n=100000,
  include_rts =FALSE,
  retryonratelimit = TRUE
)

corona_trust <- search_tweets(
  "corona OR coronavirus AND percaya OR terbuka OR tertutup OR menutupi OR jujur OR transparan OR bohong",
  n=100000,
  include_rts =FALSE,
  retryonratelimit = TRUE
)


ts_plot(corona_id, "days")
ts_plot(corona_trust, "hours")

data.table::fwrite(corona, file="corona_doa_2.csv")
data.table::fwrite(corona_id, file="corona_indonesia_2.csv")
data.table::fwrite(corona_trust, file="corona_trust_2.csv")


### Data mining (18/03/2020)

library(rtweet)

corona <- search_tweets(
  "corona OR coronavirus AND doa OR prayer",
  n=18000,
  include_rts =FALSE,
  retryonratelimit = TRUE
)

corona_id <- search_tweets(
  "corona OR coronavirus AND indonesia",
  n=100000,
  include_rts =FALSE,
  retryonratelimit = TRUE
)

corona_trust <- search_tweets(
  "corona OR coronavirus AND percaya OR terbuka OR tertutup OR menutupi OR jujur OR transparan OR bohong",
  n=100000,
  include_rts =FALSE,
  retryonratelimit = TRUE
)


ts_plot(corona_id, "days")
ts_plot(corona_trust, "hours")

data.table::fwrite(corona, file="corona_doa_3.csv")
data.table::fwrite(corona_id, file="corona_indonesia_3.csv")
data.table::fwrite(corona_trust, file="corona_trust_3.csv")
