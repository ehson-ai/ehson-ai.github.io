# 사용할 베이스 이미지 지정
FROM python:3.8

# 작업 디렉토리 설정
WORKDIR /app

# 현재 디렉토리의 모든 파일을 컨테이너로 복사
COPY . .

# 컨테이너가 실행될 때 실행할 명령어
CMD ["python", "app.py"]

