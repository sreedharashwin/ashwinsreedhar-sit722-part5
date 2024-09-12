FROM --platform=linux/amd64 python:3.10-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY /app .

EXPOSE 8001

ENV DATABASE_URL=postgresql://library_5aya_user:95juShCQRCnURO4ICnHNixBa5hTEZjeC@dpg-crh8jm08fa8c738tn0bg-a.oregon-postgres.render.com/library_5aya

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8001", "--app-dir", "/app"]