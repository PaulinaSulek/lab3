# lab3
sprawozdanie 1

polecenia użyte do:
-budowy obrazu:
docker build -f Dockerfile -t PaulinaSulek/lab3:v1 .
-przesłania obrazu na dockerhub:
docker tag lab3.v1 paulinasulek/lab3.v1:1
docker push paulinasulek/lab3.v1:1
-uruchomienia  kontenera:
docker run -p 8080:8080 lab3.v1
