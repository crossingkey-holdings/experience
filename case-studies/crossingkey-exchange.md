# Case Study: CrossingKey Exchange

A production agent-compatible commerce interface connecting natural-language buyer intent to Shopify UCP/MCP catalog search, cart creation, checkout creation, and Shopify-hosted payment handoff.

Implemented with Cloudflare Workers, JavaScript, a custom production domain, API health/search/profile endpoints, and main-site integration.

A WAF challenge issue was diagnosed from HTTP response headers, traced to a custom rule, and corrected while preserving the broader security posture.

Production: https://exchange.crossingkeyintelligence.com
