# Life365 Catalog AI Assistant

Life365 Catalog AI Assistant is a conversational backend project built with FastAPI to help users search and discover products from the Life365 catalog using natural language.

The target system follows a Retrieval-Augmented Generation approach: catalog data is fetched from the existing Life365 APIs, transformed into searchable documents, embedded with OpenAI models, stored in Qdrant, and then used to generate grounded answers for product discovery.

## Goal

The goal of this project is to build a technically solid, testable, and Docker Compose friendly backend that is focused on the Life365 domain.

This is not meant to be a generic chatbot. It is a catalog-aware assistant specialized in product recommendation and product discovery.

## Planned Architecture

The project is intended to evolve toward:

- a FastAPI backend
- a Clean Architecture structure
- Life365 APIs as the source of truth for catalog data
- Qdrant as the vector store for searchable product documents
- OpenAI as the MVP provider for embeddings and chat generation, with the possibility to move later to a local or free LLM
- an external indexing script for catalog ingestion and reindexing

## Local Setup

Create a virtual environment and install the current dependencies:

```bash
python3 -m venv .venv
./.venv/bin/pip3 install -r requirements-lock.txt
```
