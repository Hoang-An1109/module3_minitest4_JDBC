<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Present List</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
          crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1 class="text-center">Present List</h1>
    <div class="text-center">
        <a href="present?action=create" class="btn btn-primary">Create new present</a>
    </div>
    <table class="table mt-3">
        <thead>
        <tr>
            <th>ID</th>
            <th>CODE</th>
            <th>NAME</th>
            <th>PRICE</th>
            <th>SHIP</th>
            <th>IMG</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listPresent}" var="pr">
            <tr>
                <td><c:out value="${pr.id}"/></td>
                <td><c:out value="${pr.code}"/></td>
                <td><c:out value="${pr.name}"/></td>
                <td><c:out value="${pr.price}"/></td>
                <td><c:out value="${pr.ship}"/></td>
                <td><c:out value="${pr.img}"/></td>
                <td><a href="present?action=edit&id=${pr.id}" class="btn btn-primary">Edit</a></td>
                <td><a href="present?action=delete&id=${pr.id}" class="btn btn-danger">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
        integrity="sha384-D6zGgvlR4LkV4MgO9K3FHAia5/ThCgNfldFfbdRv5GAqQ5gy2CxWQV84Iw3DfocD"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shCv+aL2rGfFX5Sx6x/Z3+76al1pwFt+F5Jqh"
        crossorigin="anonymous"></script>
</body>
</html>
