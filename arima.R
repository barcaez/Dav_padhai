# Load required packages
install.packages("forecast")
install.packages("tseries")
library(forecast)
library(tseries)

# Load built-in time series data
data("AirPassengers")  # Monthly airline passengers 1949–1960
ts_data <- AirPassengers

# 1. Plot the data
plot(ts_data, main="AirPassengers Data", ylab="Passengers (1000s)", xlab="Year")

# 2. Decompose the time series
decomposed <- decompose(ts_data)
plot(decomposed)

# 3. Check stationarity using Augmented Dickey-Fuller test
adf.test(ts_data)  # If p > 0.05, it's non-stationary

# 4. Differencing to make it stationary
ts_diff <- diff(log(ts_data))
adf.test(ts_diff)  # Now should be stationary

# 5. Plot ACF and PACF
acf(ts_diff, main="ACF of Differenced Series")
pacf(ts_diff, main="PACF of Differenced Series")

# 6. Fit ARIMA model
model <- auto.arima(ts_data)
summary(model)

# 7. Forecast
forecast_values <- forecast(model, h=12)
plot(forecast_values)

