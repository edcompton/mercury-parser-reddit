FROM wangqiru/mercury-parser-api:latest

# Mercury parser API for Reddit RSS
# Based on HenryQW/mercury-parser-api

EXPOSE 3000

# Railway will set PORT environment variable
ENV PORT=3000

# Optional: Add health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD node -e "require('http').get('http://localhost:3000/health', (r) => {process.exit(r.statusCode === 200 ? 0 : 1)})" || exit 1