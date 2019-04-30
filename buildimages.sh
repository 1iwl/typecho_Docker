images_version=`awk '{print $0}' version`
images_version_next=`echo "${images_version} + 0.1"| bc`
echo "Building typecho_Docker images version is $images_version_next" 
echo ${images_version_next} >version


#build typecho_phpfpm
cd typecho_phpfpm/
images_name="liwl1iwl/typecho_phpfpm"
docker build -t $images_name:$images_version .
docker rmi $images_name":latest"
docker tag $images_name:$images_version $images_name":latest"
docker push $images_name:$images_version
docker push $images_name":latest"
cd ..

#build typecho_nginx
cd typecho_nginx
images_name="liwl1iwl/typecho_nginx"
docker build -t $images_name:$images_version .
docker rmi $images_name":latest"
docker tag $images_name:$images_version $images_name":latest"
docker push $images_name:$images_version
docker push $images_name":latest"
cd ..


