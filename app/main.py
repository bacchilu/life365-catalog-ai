"""FastAPI application entrypoint."""

from fastapi import FastAPI

from app.api.routers import router

app: FastAPI = FastAPI(title="Life365 Catalog AI Assistant")
app.include_router(router)
