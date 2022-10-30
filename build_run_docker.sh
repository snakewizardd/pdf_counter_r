docker build -t rstudio_amid .
docker run --rm  --name rstudio_amid_container \
  -p 127.0.0.1:8787:8787 \
  -v $(pwd):/home/rstudio \
  -e DISABLE_AUTH=true \
  rstudio_amid