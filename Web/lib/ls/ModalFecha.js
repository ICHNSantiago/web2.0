<script>
    (function () {
            const second = 1000,
    minute = second * 60,
    hour = minute * 60,
    day = hour * 24;

    //I'm adding this section so I don't have to keep updating this pen every year :-)
    //remove this if you don't need it
    let today = new Date(),
    dd = String(today.getDate()).padStart(2, "0"),
    mm = String(today.getMonth() + 1).padStart(2, "0"),
    yyyy = today.getFullYear(),
    nextYear = yyyy + 1,
    dayMonth = "9/28/",
    birthday = dayMonth + yyyy;

    today = mm + "/" + dd + "/" + yyyy;
            if (today > birthday) {
        birthday = dayMonth + nextYear;
            }
    //end

    const countDown = new Date(birthday).getTime(),
    x = setInterval(function () {
                    const now = new Date().getTime(),
    distance = countDown - now;

    var hora;

                    if (Math.floor((distance % (day)) / (hour)) > 9) {
        hora = Math.floor((distance % (day)) / (hour));
                    }
    else {
        hora = "0" + Math.floor((distance % (day)) / (hour));
                    }

    var minutos;

                    if (Math.floor((distance % (hour)) / (minute)) > 9) {
        minutos = Math.floor((distance % (hour)) / (minute));
                    }
    else {
        minutos = "0" + Math.floor((distance % (hour)) / (minute));
                    }

    var segundos;

                    if (Math.floor((distance % (minute)) / second) > 9) {
        segundos = Math.floor((distance % (minute)) / second);
                    }
    else {
        segundos = "0" + Math.floor((distance % (minute)) / second);
                    }


    document.getElementById("days").innerText = Math.floor(distance / (day)),
    document.getElementById("hours").innerText = hora,
    document.getElementById("minutes").innerText = minutos,
    document.getElementById("seconds").innerText = segundos;

    //do something later when date is reached
    if (distance < 0) {
        document.getElementById("headline").innerText = "Hoy es el Inicio de clases!";
    document.getElementById("headline2").innerText = "Inscripciones Abiertas";
    document.getElementById("countdown").style.display = "none";
    document.getElementById("content").style.display = "block";
    clearInterval(x);
                    }
                    //seconds

                }, 0)
        }());
</script>