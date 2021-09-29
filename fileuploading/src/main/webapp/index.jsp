<html>
<body>
<h2>Hello World!</h2>


<input id="ajaxfile" type="file"/> <br/>
  <button onclick="uploadFile()"> Upload </button>


  <script>
  async function uploadFile() {
    let formData = new FormData();
    console.log(formData);
    formData.append("file", ajaxfile.files[0]);
    console.log(formData);
    await fetch('fileupload', {
      method: "POST", 
      body: formData
    }); 
   
    alert('The file uploaded successfully!!!!');
  }
  </script>

</body>
</html>
