docker stop admin-web
docker container rm admin-web

# cd ../
# cd dockerfiles
# cp ../mall-admin/target/mall-admin-1.0-SNAPSHOT.jar mall-admin-1.0-SNAPSHOT.jar
cd ../
cp ./dockerfiles/admin.web.Dockerfile .
docker build -f admin.web.Dockerfile -t admin-web .

rm admin.web.Dockerfile


docker run -p 83:8090 --name mall-admin-web -d admin-web