//Preventing uploading big images

document.addEventListener("turbp:load",function(){
  document.addEventListener("change",function(event){
    let image_upload = document.querySelector('#micropost_image');
    const size_in_megabytes = image_upload.files[0].size/1024/1024;
    if (size_in_megabytes > 5){
      alert("MAximum file size in 5MB. Please choose a smaller file.");
      image_upload.value = "";
    }
  });
});