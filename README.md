<p align="center">
  <a href="https://www.browsersolver.com"><img src="images/banner.png" alt="Website Technology API by BrowserSolver" width="100%"></a>
</p>

# Website Technology API

[![Discord](https://img.shields.io/badge/Discord-Join%20the%20community-5865F2?logo=discord&logoColor=white)](https://discord.gg/CFj3ph8aHU) [![Get API key](https://img.shields.io/badge/BrowserSolver-Get%20an%20API%20key-111827)](https://app.browsersolver.com/register) [![API docs](https://img.shields.io/badge/Docs-API%20reference-0EA5E9)](https://app.browsersolver.com/openapi) [![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

The **BrowserSolver Website Technology API** maps the CMS, frameworks, analytics, CDN and security tooling exposed by a public URL — as a simple list or as expert metadata with confidence scores and versions.

- **Website Technology API** — Map CMS, frameworks, analytics, CDN, and security tooling exposed by a public URL.

Use it for lead enrichment, sales prospecting, competitive research and security inventory.

| Endpoint | Request | Credits |
|---|---|---|
| [Website Technology API](#website-technology-api) | `GET /v1/website/technology` | 1 |

## Table of contents

- [How it works](#how-it-works)
- [Website Technology API](#website-technology-api)
- [Code examples in other languages](#code-examples-in-other-languages)
- [Use cases](#use-cases)
- [Why BrowserSolver?](#why-browsersolver)
- [FAQ](#faq)
- [Related repositories](#related-repositories)
- [Support](#support)

## How it works

1. **Create a BrowserSolver account** and copy your API key from the [dashboard](https://app.browsersolver.com/register).
2. **Call `https://api.browsersolver.com`** with the header `x-api-key: YOUR_API_KEY`.
3. **Use the result** in your app — no infrastructure to run.

```bash
export BROWSERSOLVER_API_KEY="your-api-key"
pip install requests        # Python
# TypeScript: Node.js 18+ (native fetch), run with `npx tsx file.ts`
```

## Website Technology API

Map CMS, frameworks, analytics, CDN, and security tooling exposed by a public URL. Choose simple lists or expert metadata with confidence scores.

`GET https://api.browsersolver.com/v1/website/technology` · **1 credit per request** · [API reference](https://app.browsersolver.com/openapi)

### Request parameters

| Parameter | In | Type | Required | Description |
|---|---|---|---|---|
| `query` | query | string | ✅ | Public URL to fingerprint for CMS, frameworks, analytics, CDN, and security tooling. Include `http://` or `https://`. |
| `mode` | query | string | — | How much detail to include in the stack report. |

### Python example

```python
import os

import requests

API_KEY = os.environ["BROWSERSOLVER_API_KEY"]
HEADERS = {"x-api-key": API_KEY}

response = requests.get(
    "https://api.browsersolver.com/v1/website/technology",
    headers=HEADERS,
    params={
        "query": "https://www.shopify.com/",
    },
    timeout=120,
)
response.raise_for_status()

data = response.json()
print(data)
```

### TypeScript example

```typescript
type WebsiteTechnologyApi = {
  cms?: unknown;
  urls?: {
    "https://vercel.com/"?: {
      status?: number;
    };
  };
  technologies?: string[];
};

const headers = { "x-api-key": process.env.BROWSERSOLVER_API_KEY!, "Content-Type": "application/json" };

const params = new URLSearchParams({
  "query": "https://www.shopify.com/",
});

const response = await fetch(`https://api.browsersolver.com/v1/website/technology?${params}`, { headers });
if (!response.ok) throw new Error(`HTTP ${response.status}: ${await response.text()}`);

const data = (await response.json()) as WebsiteTechnologyApi;
console.log(data);
```

### Output example

Example response from the API reference, abridged.

```json
{
  "cms": null,
  "urls": {
    "https://vercel.com/": {
      "status": 200
    }
  },
  "technologies": [
    "Next.js",
    "React"
  ]
}
```

### Response fields

| Field | Type | Description |
|---|---|---|
| `cms` | object |  |
| `urls` | object |  |
| `urls.https://vercel.com/` | object |  |
| `technologies` | string[] |  |

## Code examples in other languages

Ready-to-run examples live in [`examples/`](examples); each reads your key from `BROWSERSOLVER_API_KEY`.

| Language | `technology` |
|---|---|
| cURL (Bash) | [technology.sh](examples/curl/technology.sh) |
| PHP | [technology.php](examples/php/technology.php) |
| C# | [Technology.cs](examples/csharp/Technology.cs) |
| Go | [technology.go](examples/go/technology.go) |
| Java | [TechnologyExample.java](examples/java/TechnologyExample.java) |
| Ruby | [technology.rb](examples/ruby/technology.rb) |
| Node.js | [technology.mjs](examples/nodejs/technology.mjs) |

## Use cases

- **Lead enrichment** — Add CMS and stack data to company records in your CRM.
- **Prospecting** — Find sites that run a given CMS, analytics tool or CDN.
- **Competitive research** — See which frameworks and tools competitors rely on.
- **Security inventory** — List the security tooling and versions exposed by your domains.

## Why BrowserSolver?

- **Three fetch tiers** — Crawler for static HTML, Rendering for JavaScript pages, WebUnlocker for hosts that still challenge a headless browser.
- **Know before you fetch** — the Antibot endpoint names the bot-protection vendor in front of a URL so you can choose the right tier.
- **Screenshots as a service** — PNG, JPEG, WebP or PDF, full page, 18 device presets, cookie banner and ad removal, S3 upload.
- **Technology detection** — CMS, frameworks, analytics, CDN and security tooling of any public URL.
- **Copy-paste examples** — Python and TypeScript in each README, 7 more languages in `examples/`.

## FAQ

### How do I authenticate?

Create an account on [BrowserSolver](https://app.browsersolver.com/register), copy your API key and send it in the `x-api-key` header of every request to `https://api.browsersolver.com`.

### How much does a request cost?

Credits per call: `/v1/website/technology` **1**. See [BrowserSolver pricing](https://www.browsersolver.com/pricing).

### What is the difference between simple and expert?

`expert` (default) returns full objects with confidence, versions, CPE, categories and descriptions; `simple` returns the CMS name, URL statuses and a flat list.

### Which languages are supported?

Any language that can make an HTTP request. This README shows Python and TypeScript; the [`examples/`](examples) folder contains cURL, PHP, C#, Go, Java, Ruby and Node.js.

## Related repositories

- [Web Unlocker API](https://github.com/browsersolver/web-unlocker-api)
- [JavaScript Rendering API](https://github.com/browsersolver/javascript-rendering-api)
- [Web Crawler API](https://github.com/browsersolver/web-crawler-api)
- [Screenshot API](https://github.com/browsersolver/screenshot-api)
- [Antibot Detection API](https://github.com/browsersolver/antibot-detection-api)
- [All BrowserSolver repositories](https://github.com/browsersolver)

## Support

- 💬 Join the [Discord](https://discord.gg/CFj3ph8aHU) to ask questions and share what you build.
- 📚 Read the [API reference](https://app.browsersolver.com/openapi).
- 🔑 [Get your API key](https://app.browsersolver.com/register).

---

<p align="center">
  <a href="https://www.browsersolver.com">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="images/logo-dark.svg">
      <img src="images/logo.svg" alt="BrowserSolver" height="28">
    </picture>
  </a>
  <br>
  <sub>Built by <a href="https://www.browsersolver.com">BrowserSolver</a>. Examples are released under the MIT license.</sub>
</p>
