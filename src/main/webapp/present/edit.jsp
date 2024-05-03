<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Present Management Application</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
          crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1 class="text-center">Present Management</h1>
    <div class="text-center">
        <c:if test='${not empty requestScope["message"]}'>
            <div class="alert alert-info" role="alert">${requestScope["message"]}</div>
        </c:if>
    </div>
    <div class="text-center">
        <h2><a href="present?action=present" class="btn btn-primary">List All Present</a></h2>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form method="post">
                <div class="card">
                    <div class="card-header">
                        <h2 class="text-center">Edit Present</h2>
                    </div>
                    <div class="card-body">
                        <c:if test="${not empty present}">
                            <input type="hidden" name="id" value="${present.id}"/>
                        </c:if>
                        <div class="form-group row">
                            <label for="code" class="col-sm-3 col-form-label">Code:</label>
                            <div class="col-sm-9">
                                <input type="text" name="code" class="form-control"
                                       value="<c:out value='${present.code}' />"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="name" class="col-sm-3 col-form-label">Name:</label>
                            <div class="col-sm-9">
                                <input type="text" name="name" class="form-control"
                                       value="<c:out value='${present.name}' />"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="price" class="col-sm-3 col-form-label">Price:</label>
                            <div class="col-sm-9">
                                <input type="text" name="price" class="form-control"
                                       value="<c:out value='${present.price}' />"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="ship" class="col-sm-3 col-form-label">Ship:</label>
                            <div class="col-sm-9">
                                <input type="text" name="ship" class="form-control"
                                       value="<c:out value='${present.ship}' />"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="img" class="col-sm-3 col-form-label">Img:</label>
                            <div class="col-sm-9">
                                <input type="text" name="img" class="form-control"
                                       value="<c:out value='${present.img}' />"/>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-center">
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
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
