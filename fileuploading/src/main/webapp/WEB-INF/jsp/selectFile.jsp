<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<input id="ajaxfile" type="file"/> <br/>
  <button onclick="uploadFile()"> Upload </button>

 
  <script>
  async function uploadFile() {
    let formData = new FormData(); 
    formData.append("file", ajaxfile.files[0]);
    await fetch('fileupload', {
      method: "POST", 
      body: formData
    }); 

    alert('The file upload with Ajax and Java was a success!');
  }
  </script>

</body>
</html>