docker run -d \
    --rm \
    --network expense \
    --name expense-frontend \
    -p 80:80 \
    frontend:5.0