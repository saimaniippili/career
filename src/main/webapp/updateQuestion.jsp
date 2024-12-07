<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Question</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Update Question</h2>
        <form action="/update" method="POST">
            <!-- Input for the Question ID -->
            <div class="form-group">
                <label for="id">Question ID:</label>
                <input type="number" id="id" name="id" class="form-control" placeholder="Enter Question ID" required />
            </div>

            <div class="form-group">
                <label for="questionTitle">Question Title:</label>
                <input type="text" id="questionTitle" name="questionTitle" class="form-control" placeholder="Enter Question Title" required />
            </div>

            <div class="form-group">
                <label for="option1">Option A:</label>
                <input type="text" id="option1" name="option1" class="form-control" placeholder="Enter Option A" required />
            </div>

            <div class="form-group">
                <label for="option2">Option B:</label>
                <input type="text" id="option2" name="option2" class="form-control" placeholder="Enter Option B" required />
            </div>

            <div class="form-group">
                <label for="option3">Option C:</label>
                <input type="text" id="option3" name="option3" class="form-control" placeholder="Enter Option C" required />
            </div>

            <div class="form-group">
                <label for="option4">Option D:</label>
                <input type="text" id="option4" name="option4" class="form-control" placeholder="Enter Option D" required />
            </div>

            <div class="form-group">
                <label for="rightAnswer">Right Answer:</label>
                <input type="text" id="rightAnswer" name="rightAnswer" class="form-control" placeholder="Enter Right Answer" required />
            </div>

            <div class="form-group">
                <label for="difficultlevel">Difficulty Level:</label>
                <input type="text" id="difficultlevel" name="difficultlevel" class="form-control" placeholder="Enter Difficulty Level" required />
            </div>

            <div class="form-group">
                <label for="category">Category:</label>
                <input type="text" id="category" name="category" class="form-control" placeholder="Enter Category" required />
            </div>

            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
