FROM python:3

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

# CMD ["python", "migrations/movie_last_updated_migration.py"]

# CMD [ "pytest", "-v", "-m", "error_handling"]
CMD [ "python", "run.py"]
