# Use the pre-built Mercury parser image directly
FROM wangqiru/mercury-parser-api:latest

# Mercury parser API for Reddit RSS
# Based on HenryQW/mercury-parser-api

# The image already exposes port 3000 and handles PORT env variable