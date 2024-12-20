<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>stacja paliw</title>
</head>

<body>
    <div id="page">
        <div id="left">
            <img src="https://picsum.photos/400" alt="tu jest obrazek">
            <div class="slidecontainer">
                <p>zakres cen paliwa od: <span id="price"></span>zł</p>
                <input type="range" min="1" max="10" value="1" class="slider" id="priceSlider">
                <p>zakres cen paliwa do: <span id="price2"></span>zł</p>
                <input type="range" min="1" max="10" value="1" class="slider" id="priceSlider2">
            </div>
            <br>
            <label for="city">Wybierz miasto:</label>

            <select id="city">
                <option value="1">Gdańsk</option>
                <option value="2">Sopot</option>
                <option value="3">Warszawa</option>
                <option value="4">Olsztyn</option>
            </select>
            <br>
            <input type="button" value="szukaj" id="btn">
        </div>
        <div id="main">
            
            <?php
            $server = "localhost";
            $username = "root";
            $password = "";
            $db = "stacje";

            $conn = mysqli_connect($server, $username, $password, $db);

           $sql = "SELECT adresy.miasto, .stacje_paliw.adres, stacje_paliw.cena FROM stacje_paliw, adresy";
           $result = $conn->query($sql);

            echo "<table>
                <tr>
                    <th>miasto</th>
                    <th>adres</th>
                    <th>cena paliwa</th>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </table>"

            ?>
        </div>
    </div>
    <script>
        var slider = document.getElementById("priceSlider");
        var output = document.getElementById("price");
        var slider2 = document.getElementById("priceSlider2");
        var output2 = document.getElementById("price2");
        output.innerHTML = slider.value;
        output2.innerHTML = slider.value

        slider.oninput = function() {
            output.innerHTML = this.value;
        }
        slider2.oninput = function() {
            output2.innerHTML = this.value;
        }
    </script>
</body>

</html>