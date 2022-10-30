# PDF Counter Program

Steps to build:

1. If you are using Docker, simply build the [Docker image](Dockerfile) using the [build_run_docker.sh](build_run_docker.sh) file

```
chmod 555 build_run_docker.sh
./build_run_docker.sh
```

[![A Successful Docker Build](https://user-images.githubusercontent.com/83378208/198884304-f37eab6d-de64-4cbb-ae40-0761bbf73840.png)

2. Now, navigate to your local web browser to [Localhost 8787](http://localhost:8787)

[![A Full Web Browser RStudio IDE ](https://user-images.githubusercontent.com/83378208/198884465-e3e75598-984d-4e1c-bb4d-d41481d08c8b.png)

3. Open the PDF program [pdf_program.R](pdf_program.R) and set your working directory to the desired location

[![Setting WD ](https://user-images.githubusercontent.com/83378208/198884585-45233ce5-0433-4b65-b1db-17c30fc947c5.png)

4. The program is simple to run and produces the output file as specified

5. To stop the Rstudio container, use the [stop_container.sh](stop_container.sh) script

```
chmod 555 stop_container.sh
./stop_container.sh
```
