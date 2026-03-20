"""Versioned API router definitions."""

from fastapi import APIRouter

router: APIRouter = APIRouter(prefix="/api/v1")


@router.get("/health")
def get_health() -> dict[str, str]:
    return {"status": "ok"}
