#!/bin/bash

# Odysseus AI - Quick Launch Script
# This script sets up and launches Odysseus AI with one command

set -e

echo "🚀 Odysseus AI - Launch Script"
echo "=============================="
echo ""

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first."
    exit 1
fi

echo "✓ Docker found"

# Clone or update repository
if [ -d "odysseus" ]; then
    echo "Updating existing installation..."
    cd odysseus
    git pull
else
    echo "Cloning Odysseus AI..."
    git clone https://github.com/Gthruworldwide/odysseEG.git odysseus
    cd odysseus
fi

# Setup environment
if [ ! -f .env ]; then
    echo "Creating .env file..."
    cp .env.example .env
    echo "⚠️  Please edit .env with your configuration"
fi

# Start services
echo ""
echo "Starting services..."
docker compose up -d --build

# Wait for services
echo "Waiting for services to start..."
sleep 10

# Check status
echo ""
echo "✅ Odysseus AI is starting!"
echo ""
echo "📍 Access at: http://localhost:7000"
echo "📚 API Docs: http://localhost:7000/docs"
echo ""
echo "View logs with: docker compose logs -f"
echo "Stop with: docker compose down"
