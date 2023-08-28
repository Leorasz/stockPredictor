# Use an official PyTorch base image
# Use an official PyTorch base image
FROM pytorch/pytorch:latest

# Copy the local code to the container's current working directory
COPY . .

# Install git if needed
RUN apt-get update && apt-get install -y git

# Install dependencies
RUN pip install pandas matplotlib numpy pytrends yfinance

# Command to run the code
CMD ["python3", "predictor"]