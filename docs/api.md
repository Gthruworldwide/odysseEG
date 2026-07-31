# API Reference

## Chat Endpoint

```bash
POST /api/chat
```

### Request

```json
{
  "messages": [
    {"role": "user", "content": "Hello"}
  ],
  "model": "gpt-3.5-turbo"
}
```

### Response

```json
{
  "response": "Hello! How can I help?",
  "model": "gpt-3.5-turbo",
  "timestamp": "2024-01-30T10:00:00Z"
}
```

## Status Endpoint

```bash
GET /api/status
```

Returns system health and service status.

## Authentication

All endpoints require API key in header:

```
X-API-Key: your-key-here
```

## Rate Limiting

- 10 requests/second per API key
- 100 requests/minute for guests

## More Endpoints

See full docs at: https://docs.odysseus.ai/api
