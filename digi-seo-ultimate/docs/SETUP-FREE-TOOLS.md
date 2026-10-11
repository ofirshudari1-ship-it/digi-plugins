# Setup guide: free SEO tools

The agent never enters keys or runs OAuth. Every step here is done by you. Keep secrets outside the plugin folder (environment variables or your own secrets store).

## 1. Google Search Console + GA4

Options:
- Use a service account that you add as a user on the Search Console property and the GA4 property, then point the plugin scripts (`scripts/gsc_*.py`, `scripts/ga4_*.py`) at your own credentials file via the environment variable documented in each script.
- Or use the OAuth flow in `scripts/google_auth.py`.

CrUX / PageSpeed: create an API key in your Google Cloud project (enable CrUX API and PageSpeed Insights API), then set it as an environment variable, for example `GOOGLE_API_KEY`, and open a new terminal.

## 2. Bing Webmaster (`scripts/ext/bing_webmaster.py`)

1. https://www.bing.com/webmasters > sign in > add your site (you can import from Search Console).
2. Settings > API access > API Key > Generate.
3. Set the environment variable `BING_WEBMASTER_API_KEY` and open a new terminal.
4. Test: `python scripts/ext/bing_webmaster.py counts https://example.com`

## 3. Unlighthouse (no key)

`python scripts/ext/unlighthouse_run.py https://example.com --device mobile --max-routes 30 --json`
Requires Node 18+. The first run downloads the package to the npx cache without a global install.

## 4. Firecrawl (optional, free tier)

Not enabled by default.
1. Sign up at https://www.firecrawl.dev and copy your API key.
2. Set `FIRECRAWL_API_KEY` in your environment and open a new terminal.
3. `claude mcp add firecrawl -e FIRECRAWL_API_KEY=<your-key-variable> -- npx -y firecrawl-mcp` (a JSON template that contains only the variable name is in `docs/optional/firecrawl.mcp.json.example`).
4. Remove with `claude mcp remove firecrawl`.

## 5. Screenshots and mobile checks (`dso-visual`)

`python scripts/ext/capture_screenshot.py <url> -v mobile -o <folder>` (requires Playwright). No key.

## 6. Google Analytics MCP (optional, experimental)

1. Install pipx and the gcloud CLI.
2. `gcloud auth application-default login` with the analytics.readonly scope, and enable the Analytics Data and Admin APIs in your project.
3. `claude mcp add analytics -e GOOGLE_APPLICATION_CREDENTIALS=<path> -e GOOGLE_PROJECT_ID=<project> -- pipx run analytics-mcp`
