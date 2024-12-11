<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Home - Peer Review Collection</title>
    <link rel="stylesheet" href="resources/styles.css"> <!-- Adjusted CSS path -->
</head>
<body>
    <%@ include file="/studentnavbar.jsp" %> <!-- Including the student-specific navbar -->

    <header class="header">
        <h1>Welcome to the Peer Review Collection System</h1>
        <p>Submit, review, and engage with your peers efficiently.</p>
    </header>

    <main class="container">
        <section class="submit-review">
            <h2>Submit Peer Reviews</h2>
            <p>Upload your peer review assignments and share your insights.</p>
            <a href="submitreview.jsp" class="button">Submit Review</a>
        </section>

        <section class="view-reviews">
            <h2>View Peer Reviews</h2>
            <p>Browse the reviews submitted by your peers and gain valuable feedback.</p>
            <a href="viewreviews.jsp" class="button">View Reviews</a>
        </section>

        <section class="progress-tracking">
            <h2>Track Your Progress</h2>
            <p>Monitor your submission status and performance analytics.</p>
            <a href="progress.jsp" class="button">Track Progress</a>
        </section>
    </main>
</body>
</html>
