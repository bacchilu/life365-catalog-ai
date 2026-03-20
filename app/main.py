"""FastAPI application entrypoint."""

from fastapi import FastAPI

from app.api.routers import router
from app.settings import Settings, get_settings

settings: Settings = get_settings()

app: FastAPI = FastAPI(title=settings.app_name)
app.state.settings = settings
app.include_router(router)
