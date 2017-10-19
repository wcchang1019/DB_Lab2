<!DOCTYPE html>
<html lang="en">
  <head>
    <title>DB2</title>
  </head>
  <body>
      <table>
        <thead>
          <tr>
            <th>#</th>
            <td>Name</td>
            <!-- type your answer here (hint: column name)-->
            <td>gender</td>
            <td>occupation</td>
            <td>salary</td>

          </tr>
        </thead>
        <tbody>
            <?php
              $db_host = "dbhome.cs.nctu.edu.tw";
              $db_name = "weiche_cs_Lab2";
              $db_user = "weiche_cs";
              $db_password = "godtone1019";
              $dsn = "mysql:host=$db_host;dbname=$db_name";
              $db = new PDO($dsn, $db_user, $db_password);
              $people_sql = "SELECT people.name AS n, 
              people.gender, 
              people.salary,
              people.id,
              occupation.name
             	FROM people left join occupation on people.occupation_id=occupation.id ORDER BY people.id ASC";
              $people_rs = $db->query($people_sql);

              while($person = $people_rs->fetchObject()){
            ?>

              <tr>
                <th scope="row"><?php echo $person->id; ?></th>
                <td><?php echo $person->n; ?></td>
                <!-- type your answer here -->
                <td><?php echo $person->gender; ?></td>
                <td><?php echo $person->name; ?></td>
                <td><?php echo $person->salary; ?></td>

              </tr>

            <?php
              }
            ?>
        </tbody>
      </table>
  </body>
</html>