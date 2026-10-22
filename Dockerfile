FROM python:3.12-alpine

WORKDIR /site

COPY index.html favicon.svg south-african-heritage.jpg modern-streetwear.jpg damusa-story.jpg ./

EXPOSE 10000

CMD ["sh", "-c", "python3 -m http.server ${PORT:-10000} --bind 0.0.0.0"]
