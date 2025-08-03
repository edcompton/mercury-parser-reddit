# Mercury Parser API for Reddit RSS

This is a deployment of the Mercury Parser API specifically configured for use with the Reddit RSS feed generator.

## Deployment to Railway

### Option 1: Deploy via Railway Dashboard (Recommended)

1. Go to [Railway Dashboard](https://railway.app/dashboard)
2. Click "New Project"
3. Select "Deploy from GitHub repo"
4. Connect this repository
5. Railway will automatically detect the Dockerfile and deploy

### Option 2: Deploy via Railway CLI

1. Install Railway CLI:
```bash
brew install railway
# or
curl -fsSL https://raw.githubusercontent.com/railwayapp/cli/master/install.sh | sh
```

2. Login to Railway:
```bash
railway login
```

3. Create a new project:
```bash
railway init
```

4. Deploy:
```bash
railway up
```

5. Get the deployment URL:
```bash
railway open
```

## Environment Variables

After deployment, set these optional environment variables in Railway:

- `API_KEY`: (Optional) Secure your Mercury parser with an API key
- `PORT`: Railway sets this automatically (default: 3000)

## Configuration in Reddit RSS

Once deployed, add these environment variables to your Reddit RSS deployment:

```
MERCURY_URL=https://your-mercury-deployment.up.railway.app
MERCURY_API_KEY=your-optional-api-key
```

## Testing the Deployment

Test your Mercury parser deployment:

```bash
curl "https://your-deployment.up.railway.app/parser?url=https://example.com"
```

## API Usage

### Basic Request
```
GET /parser?url=[URL_TO_PARSE]
```

### With API Key (if configured)
```
GET /parser?url=[URL_TO_PARSE]
Headers: x-api-key: your-api-key
```

### Response Format
```json
{
  "title": "Article Title",
  "author": "Author Name",
  "date_published": "2024-01-01T00:00:00.000Z",
  "content": "<p>Article content in HTML</p>",
  "lead_image_url": "https://example.com/image.jpg",
  "excerpt": "Article excerpt",
  "domain": "example.com",
  "word_count": 500,
  "direction": "ltr",
  "total_pages": 1,
  "rendered_pages": 1,
  "next_page_url": null
}
```

## Source

Based on [HenryQW/mercury-parser-api](https://github.com/HenryQW/mercury-parser-api)