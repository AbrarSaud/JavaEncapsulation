document.getElementById("data-form").addEventListener("submit", function(event) {
  event.preventDefault();

  var name = document.getElementById("name").value;
  var email = document.getElementById("email").value;
  var phone = document.getElementById("phone").value;

  var xhr = new XMLHttpRequest();
  xhr.open("POST", "save_data.php", true);
  xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
  xhr.onreadystatechange = function() {
      if (xhr.readyState === 4 && xhr.status === 200) {
          loadData();
          document.getElementById("data-form").reset();
      }
  };
  xhr.send("name=" + encodeURIComponent(name) + "&email=" + encodeURIComponent(email) + "&phone=" + encodeURIComponent(phone));
});

function loadData() {
  var xhr = new XMLHttpRequest();
  xhr.open("GET", "get_data.php", true);
  xhr.onreadystatechange = function() {
      if (xhr.readyState === 4 && xhr.status === 200) {
          var data = JSON.parse(xhr.responseText);
          var dataList = document.getElementById("data-list");
          dataList.innerHTML = "";

          for (var i = 0; i < data.length; i++) {
              var item = document.createElement("div");
              item.innerHTML = "<strong>Name:</strong> " + data[i].name + "<br>" +
                               "<strong>Email:</strong> " + data[i].email + "<br>" +
                               "<strong>Phone:</strong> " + data[i].phone + "<br><br>";
              dataList.appendChild(item);
          }
      }
  };
  xhr.send();
}

loadData();