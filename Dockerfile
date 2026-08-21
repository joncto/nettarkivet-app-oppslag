FROM python:3.14-slim-trixie

WORKDIR /app

RUN pip install --no-cache-dir \
    "streamlit==1.61.1" \
    "pandas==3.0.5" \
    "requests==2.34.2" \
    "XlsxWriter==3.2.9"

COPY app.py ./

EXPOSE 8501

ENV STREAMLIT_SERVER_HEADLESS=true \
    STREAMLIT_BROWSER_GATHER_USAGE_STATS=false

ENTRYPOINT ["streamlit", "run", "app.py", \
            "--server.port=8501", \
            "--server.address=0.0.0.0", \
            "--server.baseUrlPath=oppslag"]
