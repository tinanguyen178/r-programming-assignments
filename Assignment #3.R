# Create vectors
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")

ABC_poll <- c(4, 62, 51, 21, 2, 14, 15)

CBS_poll <- c(12, 75, 43, 19, 1, 21, 19)

# Create data frame
df_polls <- data.frame(Name, ABC_poll, CBS_poll)
df_polls

# Inspect the data
str(df_polls)
head(df_polls)

# Summary statistics
# ABC Poll
mean(df_polls$ABC_poll)
median(df_polls$ABC_poll)
range(df_polls$ABC_poll)

# CBS Poll
mean(df_polls$CBS_poll)
median(df_polls$CBS_poll)
range(df_polls$CBS_poll)

# Difference between CBS and ABC
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll
df_polls


library(ggplot2)

# Create bar chart
ggplot(df_polls, aes(x = Name, y = Diff)) +
  geom_col() +
  labs(
    title = "Difference Between CBS and ABC Polls",
    x = "Candidate",
    y = "CBS Poll - ABC Poll"
  )
