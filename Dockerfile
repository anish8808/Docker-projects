#use offical image , pull a base image which gives all required tools and pre-installed gcc 
FROM gcc:latest

#create a folder where the app code will be stored , and this will be inside the container
WORKDIR /app

#copying the src from the host to container
COPY . .
#COPY src/sort.cpp /app/sort.cpp ---> we can use this also to copy exact cpp file inside container dir

# compile the code and create a object file name my_app
# compile the code and create a object file name my_app
RUN g++ -o my_app src/sort.cpp

#running the  appication
#running the  appication
CMD ["./my_app"]