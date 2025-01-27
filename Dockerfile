# Nginx를 베이스 이미지로 설정
FROM nginx:latest

# Nginx 기본 설정 파일 제거
RUN rm -rf /usr/share/nginx/html/*

# 현재 디렉토리의 파일을 컨테이너로 복사
COPY . /usr/share/nginx/html

# Nginx 서버 실행
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
