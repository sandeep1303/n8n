# Replace old URLs with your current Railway domain
curl -X POST https://n8n-production-8fb1.up.railway.app/webhook-test/whatsapp-bot \
-H "Content-Type: application/json" \
-d '{"message": {"text": "999"}}'
