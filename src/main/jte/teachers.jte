@import com.example.project.exam.model.Teacher
@import java.util.List

@param List<Teacher> teachers

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher List</title>
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<h1>All Teachers</h1>

@if (teachers.isEmpty())
    <p>No teachers found in the database.</p>
@else
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
        </tr>
        </thead>
        <tbody>
        @for (Teacher teacher : teachers)
            <tr>
                <td>${teacher.id}</td>
                <td>${teacher.name}</td>
                <td>${teacher.email}</td>
            </tr>
        @endfor
        </tbody>
    </table>
@endif

</body>
</html>
