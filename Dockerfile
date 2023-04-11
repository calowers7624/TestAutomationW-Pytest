FROM baseImage

WORKDIR /api

COPY api/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "-m", "npm", "run", "--host=0.0.0.0"]