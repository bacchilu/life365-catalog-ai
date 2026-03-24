"""Versioned API router definitions."""

from fastapi import APIRouter, Request

from app.settings import Settings

router: APIRouter = APIRouter(prefix="/api/v1")


@router.get("/health")
def get_health(request: Request) -> dict[str, str]:
    settings: Settings = request.app.state.settings
    return {"status": "ok", "qdrant_url": settings.qdrant_url}
