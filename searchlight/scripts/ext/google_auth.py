"""Minimal shim for the ext/ scripts (imported by name as ``google_auth``).

The upstream claude-seo ``google_auth.py`` (35 KB OAuth/service-account manager)
is intentionally NOT bundled: the ext/ scripts only need four tiny helpers.
Credentials are never stored in this plugin; keys come from environment
variables only (GOOGLE_API_KEY / PSI_API_KEY), nothing is written to disk here.
"""
from __future__ import annotations

import os
import re
from typing import Optional

from url_safety import validate_url  # noqa: F401  (re-exported for ext scripts)

_KEY_RE = re.compile(r"AIza[0-9A-Za-z_\-]{20,}")
_KEY_QUERY_RE = re.compile(r"([?&])key=[^&\s]*(&?)")


def get_api_key() -> Optional[str]:
    return os.environ.get("GOOGLE_API_KEY") or os.environ.get("PSI_API_KEY")


def google_api_key_headers(api_key: str) -> dict:
    return {"X-Goog-Api-Key": api_key}


def redact_google_api_key(value: object) -> str:
    text = _KEY_QUERY_RE.sub(lambda m: m.group(1) if m.group(2) else "", str(value))
    return _KEY_RE.sub("GOOGLE_API_KEY_REDACTED", text)


def _chmod_quiet(path: str, mode: int) -> None:
    try:
        os.chmod(path, mode)
    except OSError:
        pass
