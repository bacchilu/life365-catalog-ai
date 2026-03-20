"""Application settings loaded from environment variables."""

import os
from dataclasses import dataclass


@dataclass(frozen=True, slots=True)
class Settings:
    app_name: str
    environment: str


def get_settings() -> Settings:
    return Settings(
        app_name=os.getenv("APP_NAME", "Life365 Catalog AI Assistant"),
        environment=os.getenv("ENVIRONMENT", "development"),
    )
