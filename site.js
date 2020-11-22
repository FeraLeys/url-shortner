const btn = document.querySelector('[data-b]');
const input = document.querySelector('[data-p]');
const app_url = "http://localhost/Url_Shortener.com/";
const alert = document.querySelector('.alert');
const btnCopy = document.querySelector('[data-c]');

alert.classList.add("invisible");


function ajax(ep) {
    var xhr = new XMLHttpRequest();
    var url = "";
    xhr.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            input.value = this.responseText;
            btn.innerHTML = " Copy";
            btn.classList.add("fa");
            btn.classList.add("fa-copy");
            input.select();
        }
    };
    xhr.open("GET", app_url + "short.php?uri=" + ep, true);
    xhr.send();
}

var copied;

btn.addEventListener('click', function (e) {
    e.preventDefault;
    alert.classList.add("invisible");

    if (input.value == '') {
        alert.classList.remove("invisible");
    } else {
        if (copied) {
            document.querySelector('[data-p]').select();

            try {
                // Copy the text
                copied = document.execCommand('copy');
            }
            catch (ex) {
                copied = false;
            }

            if (copied) {
                // Display the copied text message
                alert.classList.remove("alert-danger");
                alert.style.color = "#155724";
                alert.style.backgroundColor = "#d4edda";
                alert.style.borderColor = "##c3e6cb";
                alert.innerHTML = "URL berhasil dipendekan!";
                alert.classList.remove('invisible');
            }
        } else
            if (input.value.length > 15) {
                ajax(input.value);
                copied = true;
            } else {
                alert.classList.remove("invisible");
                alert.innerHTML = "URL terlalu pendek!"
            }

    }

});