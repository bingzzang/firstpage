<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>My First Page - Content</title>
</head>
<body>
 <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="#">Active</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#">Disabled</a>
          </li>
        </ul>
      </nav>
      <div class="container">
        <h2>Bordered Table</h2>
        <p>The .table-bordered class adds borders on all sides of the table and the cells:</p>            
        <table class="table table-bordered">
          <thead>
            <tr>
              <th>Title</th>
              <th>Lastname</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Writer</td>
              <td>Doe</td>
            </tr>
            <tr>
              <td>Content</td>
              <td><textarea rows="5" cols="100"></textarea></td>
            </tr>
            <tr>
              <td>July</td>
              <td>Dooley</td>
            </tr>
          </tbody>
        </table>
      </div>
</body>
</html>